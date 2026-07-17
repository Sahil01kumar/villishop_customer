import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/order_validation_result.dart';
import '../domain/repositories/order_validation_repository.dart';
import '../data/repositories/order_validation_repository_impl.dart';
import '../data/models/order_review_model.dart';
import '../../cart/providers/cart_provider.dart';
import '../../location/providers/location_provider.dart';
import '../../delivery/providers/delivery_provider.dart';
import '../../delivery/data/models/delivery_slot_model.dart';
import '../../payment/providers/payment_provider.dart';

part 'order_validation_provider.freezed.dart';

@freezed
class OrderValidationState with _$OrderValidationState {
  const factory OrderValidationState.initial() = _Initial;
  const factory OrderValidationState.loading() = _Loading;
  const factory OrderValidationState.success(OrderValidationResult result) =
      _Success;
  const factory OrderValidationState.failure(OrderValidationResult result) =
      _Failure;
}

final orderValidationRepositoryProvider =
    Provider<OrderValidationRepository>((ref) {
  return OrderValidationRepositoryImpl();
});

class OrderValidationNotifier extends StateNotifier<OrderValidationState> {
  final OrderValidationRepository _repository;
  final Ref _ref;

  OrderValidationNotifier(this._repository, this._ref)
      : super(const OrderValidationState.initial());

  Future<bool> validateOrder() async {
    state = const OrderValidationState.loading();

    try {
      final cart = _ref.read(cartProvider).cart;
      final address = _ref.read(locationProvider).selectedAddress;
      final deliveryState = _ref.read(deliveryProvider);
      final paymentState = _ref.read(paymentProvider);

      if (address == null) {
        final res = OrderValidationResult.failure(
          code: 'NO_ADDRESS',
          title: 'Address Required',
          message: 'Please select a delivery address to continue.',
        );
        state = OrderValidationState.failure(res);
        return false;
      }

      // Fix for infinite loading: handle null slot for 'Deliver Now' mode
      final DeliverySlotModel slot;
      if (deliveryState.deliveryMode == DeliveryMode.deliverNow) {
        slot = DeliverySlotModel(
          slotId: 'instant',
          deliveryType: DeliveryType.instant,
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(minutes: 30)),
          label: 'Deliver Now',
          estimatedMinutes: deliveryState.etaMinutes,
        );
      } else {
        if (deliveryState.selectedSlot == null) {
          final res = OrderValidationResult.failure(
            code: 'NO_SLOT',
            title: 'Slot Required',
            message: 'Please select a delivery slot to continue.',
          );
          state = OrderValidationState.failure(res);
          return false;
        }
        slot = deliveryState.selectedSlot!;
      }

      final review = OrderReviewModel(
        cart: cart,
        address: address,
        deliverySlot: slot,
      );

      // Add timeout to prevent infinite loading if repository hangs
      final result = await _repository
          .validateFullOrder(
            orderReview: review,
            paymentMethod: paymentState.selectedMethod,
            walletBalance:
                paymentState.walletBalance + paymentState.cashbackBalance,
          )
          .timeout(
            const Duration(seconds: 10),
            onTimeout: () => throw TimeoutException('Validation timed out'),
          );

      if (result.isValid) {
        state = OrderValidationState.success(result);
        return true;
      } else {
        state = OrderValidationState.failure(result);
        return false;
      }
    } catch (e) {
      final errorRes = OrderValidationResult.failure(
        code: 'VALIDATION_ERROR',
        title: 'Validation Failed',
        message: e is TimeoutException
            ? 'Unable to validate order. Please check your connection and try again.'
            : 'An unexpected error occurred. Please try again.',
      );
      state = OrderValidationState.failure(errorRes);
      return false;
    } finally {
      // Ensure loading state is reset even if we didn't explicitly set success/failure
      if (state == const OrderValidationState.loading()) {
        state = const OrderValidationState.initial();
      }
    }
  }

  void reset() {
    state = const OrderValidationState.initial();
  }
}

final orderValidationProvider =
    StateNotifierProvider<OrderValidationNotifier, OrderValidationState>((ref) {
  return OrderValidationNotifier(
      ref.watch(orderValidationRepositoryProvider), ref);
});
