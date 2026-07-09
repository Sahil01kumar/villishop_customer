import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/order_repository.dart';
import '../data/repositories/order_repository_impl.dart';
import 'order_review_state.dart';
import '../data/models/order_review_model.dart';
import '../../cart/providers/cart_provider.dart';
import '../../location/providers/location_provider.dart';
import '../../delivery/providers/delivery_provider.dart';

final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepositoryImpl();
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
    final slot = _ref.read(deliveryProvider).selectedSlot;

    if (address == null) {
      state = state.copyWith(validationError: 'Please select a delivery address');
      return false;
    }

    if (slot == null) {
      state = state.copyWith(validationError: 'Please select a delivery slot');
      return false;
    }

    if (cart.shopCarts.isEmpty) {
      state = state.copyWith(validationError: 'Your cart is empty');
      return false;
    }

    state = state.copyWith(isValidating: true, validationError: null);

    final review = OrderReviewModel(
      cart: cart,
      address: address,
      deliverySlot: slot,
      specialInstructions: state.specialInstructions,
      otherInstructions: state.otherInstructions,
      orderNote: state.orderNote,
    );

    final isValid = await _repository.validateOrder(review);
    
    state = state.copyWith(
      isValidating: false, 
      validationError: isValid ? null : 'Validation failed. Please check your cart or shop status.',
    );

    return isValid;
  }
}

final orderReviewProvider = StateNotifierProvider<OrderNotifier, OrderReviewState>((ref) {
  return OrderNotifier(ref.watch(orderRepositoryProvider), ref);
});
