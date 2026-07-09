import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/cart/domain/repositories/validation/cart_validation_repository.dart';
import 'package:villishop_customer/features/cart/data/repositories/validation/cart_validation_repository_impl.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import 'cart_validation_state.dart';

final cartValidationRepositoryProvider =
    Provider<CartValidationRepository>((ref) {
  return CartValidationRepositoryImpl();
});

class CartValidationNotifier extends StateNotifier<CartValidationState> {
  final CartValidationRepository _repository;
  final Ref _ref;

  CartValidationNotifier(this._repository, this._ref)
      : super(const CartValidationState());

  Future<void> validateCart() async {
    final cart = _ref.read(cartProvider).cart;
    if (cart.shopCarts.isEmpty) return;

    state = state.copyWith(isValidating: true, errorMessage: null);
    try {
      final result = await _repository.validateCart(cart);
      state = state.copyWith(isValidating: false, validationResult: result);
    } catch (e) {
      state = state.copyWith(isValidating: false, errorMessage: e.toString());
    }
  }

  void clearResults() {
    state = state.copyWith(validationResult: null);
  }
}

final cartValidationProvider =
    StateNotifierProvider<CartValidationNotifier, CartValidationState>((ref) {
  return CartValidationNotifier(
      ref.watch(cartValidationRepositoryProvider), ref);
});
