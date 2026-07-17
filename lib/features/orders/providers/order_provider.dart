import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../domain/repositories/order_repository.dart';
import '../data/repositories/order_repository_impl.dart';
import 'order_review_state.dart';
import '../data/models/order_review_model.dart';
import '../data/models/order_model.dart';
import '../data/models/order_placement_status.dart';
import '../domain/services/place_order_engine.dart';
import '../../cart/providers/cart_provider.dart';
import '../../location/providers/location_provider.dart';
import '../../delivery/providers/delivery_provider.dart';
import '../../delivery/data/models/delivery_slot_model.dart';
import '../../payment/providers/payment_provider.dart';
import '../../finance/providers/finance_providers.dart';
import '../../authentication/providers/auth_provider.dart';
import '../../../core/services/shared_pref_service.dart';
import '../../../core/services/connectivity_service.dart';
import '../../../core/error/order_error_logger.dart';
import '../../../core/services/payment_service.dart';
import 'order_lifecycle_provider.dart';

part 'order_provider.freezed.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState.idle() = _PlaceOrderIdle;
  const factory PlaceOrderState.loading({
    @Default(OrderPlacementStatus.validating) OrderPlacementStatus status,
    String? message,
  }) = _PlaceOrderLoading;
  const factory PlaceOrderState.retrying({
    required OrderPlacementStatus status,
    required int attempt,
  }) = _PlaceOrderRetrying;
  const factory PlaceOrderState.success(OrderModel order) = _PlaceOrderSuccess;
  const factory PlaceOrderState.failure({
    required OrderPlacementStatus errorStatus,
    required String message,
    String? errorCode,
  }) = _PlaceOrderFailure;
}

final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepositoryImpl(ref.watch(sharedPreferencesServiceProvider));
});

class OrderNotifier extends StateNotifier<OrderReviewState> {
  final OrderRepository _repository;
  final Ref _ref;

  OrderNotifier(this._repository, this._ref) : super(const OrderReviewState());

  void toggleSpecialInstruction(String instruction) {
    final list = List<String>.from(state.specialInstructions);
    if (list.contains(instruction)) {
      list.remove(instruction);
    } else {
      list.add(instruction);
    }
    state = state.copyWith(specialInstructions: list);
  }

  void updateOtherInstructions(String text) {
    state = state.copyWith(otherInstructions: text);
  }

  void updateOrderNote(String text) {
    state = state.copyWith(orderNote: text);
  }

  Future<bool> validateOrder() async {
    final cart = _ref.read(cartProvider).cart;
    final address = _ref.read(locationProvider).selectedAddress;
    final deliveryState = _ref.read(deliveryProvider);

    if (address == null) {
      state =
          state.copyWith(validationError: 'Please select a delivery address');
      return false;
    }

    if (deliveryState.deliveryMode == DeliveryMode.scheduled &&
        deliveryState.selectedSlot == null) {
      state = state.copyWith(
          validationError: 'Please select a delivery time slot.');
      return false;
    }

    if (cart.shopCarts.isEmpty) {
      state = state.copyWith(validationError: 'Your cart is empty');
      return false;
    }

    state = state.copyWith(isValidating: true, validationError: null);

    final finalSlot = deliveryState.deliveryMode == DeliveryMode.deliverNow
        ? DeliverySlotModel(
            slotId: 'instant_${DateTime.now().millisecondsSinceEpoch}',
            deliveryType: DeliveryType.instant,
            startTime: DateTime.now(),
            endTime: DateTime.now().add(const Duration(minutes: 30)),
            label: 'Deliver Now',
            estimatedMinutes: deliveryState.etaMinutes,
          )
        : deliveryState.selectedSlot!;

    final review = OrderReviewModel(
      cart: cart,
      address: address,
      deliverySlot: finalSlot,
      specialInstructions: state.specialInstructions,
      otherInstructions: state.otherInstructions,
      orderNote: state.orderNote,
    );

    try {
      final isValid = await _repository.validateOrder(review).timeout(
            const Duration(seconds: 10),
            onTimeout: () => throw TimeoutException('Validation timed out'),
          );

      state = state.copyWith(
        isValidating: false,
        validationError: isValid
            ? null
            : 'Validation failed. Please check your cart or shop status.',
      );

      return isValid;
    } catch (e) {
      state = state.copyWith(
          isValidating: false,
          validationError: 'Unable to validate order. Please try again.');
      return false;
    }
  }
}

class PlaceOrderNotifier extends StateNotifier<PlaceOrderState> {
  final OrderRepository _repository;
  final Ref _ref;
  StreamSubscription? _connectivitySubscription;
  OrderModel? _pendingOrder;

  PlaceOrderNotifier(this._repository, this._ref)
      : super(const PlaceOrderState.idle()) {
    _restorePendingOrder();
    _listenToConnectivity();
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    super.dispose();
  }

  void _listenToConnectivity() {
    _connectivitySubscription = _ref
        .read(connectivityServiceProvider)
        .onConnectivityChanged
        .listen((results) {
      if (results.any((r) => r != ConnectivityResult.none)) {
        if (state.maybeWhen(
            failure: (status, _, __) =>
                status == OrderPlacementStatus.networkError,
            orElse: () => false)) {
          retryPlaceOrder();
        }
      }
    });
  }

  Future<void> _restorePendingOrder() async {
    _pendingOrder = await _repository.getPendingOrder();
  }

  Future<void> placeOrder() async {
    if (state.maybeWhen(loading: (_, __) => true, orElse: () => false)) return;

    state =
        const PlaceOrderState.loading(status: OrderPlacementStatus.validating);

    try {
      final cart = _ref.read(cartProvider).cart;
      final address = _ref.read(locationProvider).selectedAddress;
      final deliveryState = _ref.read(deliveryProvider);
      final paymentState = _ref.read(paymentProvider);
      final invoice = await _ref.read(invoiceProvider.future);
      final user = _ref
          .read(authProvider)
          .maybeWhen(authenticated: (u) => u, orElse: () => null);
      final reviewState = _ref.read(orderReviewProvider);

      if (address == null || user == null) {
        throw Exception("Session expired or address missing");
      }
      if (paymentState.selectedMethod == null) {
        throw Exception("Please select a payment method");
      }

      state = const PlaceOrderState.loading(
          status: OrderPlacementStatus.reservingInventory);

      final slot = deliveryState.deliveryMode == DeliveryMode.deliverNow
          ? DeliverySlotModel(
              slotId: 'instant',
              deliveryType: DeliveryType.instant,
              startTime: DateTime.now(),
              endTime: DateTime.now().add(const Duration(minutes: 30)),
              label: 'Deliver Now',
              estimatedMinutes: deliveryState.etaMinutes,
            )
          : deliveryState.selectedSlot!;

      final review = OrderReviewModel(
        cart: cart,
        address: address,
        deliverySlot: slot,
        specialInstructions: reviewState.specialInstructions,
        orderNote: reviewState.orderNote,
      );

      _pendingOrder = PlaceOrderEngine.buildOrderModel(
        review: review,
        paymentMethod: paymentState.selectedMethod!,
        invoice: invoice,
        customerId: user.id,
      );

      await _repository.savePendingOrder(_pendingOrder!);

      await _executeOrderFlow(_pendingOrder!);
    } catch (e) {
      _handleFailure(OrderPlacementStatus.cancelled, e.toString());
    }
  }

  Future<void> retryPlaceOrder() async {
    if (_pendingOrder == null) {
      await _restorePendingOrder();
    }
    if (_pendingOrder != null) {
      state = const PlaceOrderState.retrying(
          status: OrderPlacementStatus.placingOrder, attempt: 1);
      await _executeOrderFlow(_pendingOrder!);
    } else {
      state = const PlaceOrderState.idle();
    }
  }

  Future<void> _executeOrderFlow(OrderModel order) async {
    try {
      final isConnected =
          await _ref.read(connectivityServiceProvider).isConnected();
      if (!isConnected) {
        throw Exception('NETWORK_ERROR');
      }

      state = const PlaceOrderState.loading(
          status: OrderPlacementStatus.paymentProcessing);

      final paymentResponse =
          await _ref.read(paymentProvider.notifier).processPayment(
                amount: order.invoiceSnapshot.grandTotal,
                orderId: order.orderId,
              );

      if (paymentResponse.status != PaymentStatus.success) {
        throw Exception('PAYMENT_FAILED: ${paymentResponse.errorMessage}');
      }

      state = const PlaceOrderState.loading(
          status: OrderPlacementStatus.placingOrder);
      await PlaceOrderEngine.reserveInventory(order);

      final placedOrder = await _repository.createOrder(order).timeout(
            const Duration(seconds: 10),
            onTimeout: () =>
                throw TimeoutException('Order placement timed out'),
          );

      await _repository.clearPendingOrder();
      _pendingOrder = null;

      _ref.read(activeOrderIdProvider.notifier).state = placedOrder.orderId;

      _ref.read(cartProvider.notifier).clearCart();
      _ref.read(orderReviewProvider.notifier).state = const OrderReviewState();

      _ref.invalidate(customerOrdersProvider);

      state = PlaceOrderState.success(placedOrder);
    } catch (e) {
      _handleFailure(OrderPlacementStatus.placingOrder, e.toString());
    }
  }

  void _handleFailure(OrderPlacementStatus status, String error) {
    OrderPlacementStatus errorStatus = status;
    String message = 'Couldn\'t place your order. Please try again.';
    String type = 'UNKNOWN';

    if (error.contains('NETWORK_ERROR')) {
      errorStatus = OrderPlacementStatus.networkError;
      message =
          'No Internet Connection. We\'ll retry automatically when you\'re back online.';
      type = 'NETWORK';
    } else if (error.contains('500') || error.contains('SERVER_ERROR')) {
      errorStatus = OrderPlacementStatus.serverError;
      message = 'Servers are busy. Please try again in a moment.';
      type = 'SERVER';
    } else if (error.contains('TIMEOUT') || error.contains('timeout')) {
      errorStatus = OrderPlacementStatus.timeout;
      message = 'Taking longer than expected... Please check your connection.';
      type = 'TIMEOUT';
    } else if (error.contains('PAYMENT')) {
      errorStatus = OrderPlacementStatus.paymentFailed;
      message = 'Payment Failed. Please try another method.';
      type = 'PAYMENT';
    }

    final user = _ref
        .read(authProvider)
        .maybeWhen(authenticated: (u) => u, orElse: () => null);
    orderErrorLogger.logOrderFailure(
      orderId: _pendingOrder?.orderId ?? 'N/A',
      userId: user?.id ?? 'GUEST',
      reason: error,
      errorType: type,
    );

    state = PlaceOrderState.failure(
      errorStatus: errorStatus,
      message: message,
    );
  }

  void reset() {
    _repository.clearPendingOrder();
    _pendingOrder = null;
    state = const PlaceOrderState.idle();
  }
}

final orderReviewProvider =
    StateNotifierProvider<OrderNotifier, OrderReviewState>((ref) {
  return OrderNotifier(ref.watch(orderRepositoryProvider), ref);
});

final placeOrderProvider =
    StateNotifierProvider<PlaceOrderNotifier, PlaceOrderState>((ref) {
  return PlaceOrderNotifier(ref.watch(orderRepositoryProvider), ref);
});

final customerOrdersProvider = FutureProvider<List<OrderModel>>((ref) async {
  final user = ref
      .watch(authProvider)
      .maybeWhen(authenticated: (u) => u, orElse: () => null);
  if (user == null) return [];

  final repository = ref.watch(orderRepositoryProvider);
  final orders = await repository.getCustomerOrders(user.id);
  // Manual cache time or keepAlive if needed, but Riverpod 2 does this by default if watched.
  return orders;
});

final orderDetailsProvider =
    FutureProvider.family<OrderModel?, String>((ref, orderId) async {
  final repository = ref.watch(orderRepositoryProvider);
  return await repository.getOrderById(orderId);
});
