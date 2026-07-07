import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/cart/domain/repositories/multi_shop_cart_repository.dart';
import 'package:villishop_customer/features/cart/data/repositories/multi_shop_cart_repository_impl.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'multi_shop_cart_state.dart';

final multiShopCartRepositoryProvider = Provider<MultiShopCartRepository>((ref) {
  return MultiShopCartRepositoryImpl();
});

class MultiShopCartNotifier extends StateNotifier<MultiShopCartState> {
  final MultiShopCartRepository _repository;

  MultiShopCartNotifier(this._repository) : super(const MultiShopCartState()) {
    loadCart();
  }

  Future<void> loadCart() async {
    state = state.copyWith(isLoading: true);
    final cart = await _repository.getMultiShopCart();
    state = state.copyWith(isLoading: false, cart: cart);
  }

  Future<void> addItem(ProductModel product, {int quantity = 1}) async {
    await _repository.addItem(product, quantity);
    await loadCart();
  }

  Future<void> removeItem(String shopId, String productId) async {
    await _repository.removeItem(shopId, productId);
    await loadCart();
  }

  Future<void> incrementQuantity(String shopId, String productId) async {
    final shopCart = state.cart.shopCarts.firstWhere((s) => s.shopId == shopId);
    final item = shopCart.items.firstWhere((i) => i.product.id == productId);
    await _repository.updateQuantity(shopId, productId, item.quantity + 1);
    await loadCart();
  }

  Future<void> decrementQuantity(String shopId, String productId) async {
    final shopCart = state.cart.shopCarts.firstWhere((s) => s.shopId == shopId);
    final item = shopCart.items.firstWhere((i) => i.product.id == productId);
    await _repository.updateQuantity(shopId, productId, item.quantity - 1);
    await loadCart();
  }

  Future<void> toggleShopSelection(String shopId, bool isSelected) async {
    await _repository.toggleShopSelection(shopId, isSelected);
    await loadCart();
  }

  Future<void> toggleShopExpansion(String shopId, bool isExpanded) async {
    await _repository.toggleShopExpansion(shopId, isExpanded);
    await loadCart();
  }

  Future<void> clearShopCart(String shopId) async {
    await _repository.clearShopCart(shopId);
    await loadCart();
  }

  Future<void> clearAll() async {
    await _repository.clearAll();
    await loadCart();
  }
}

final multiShopCartProvider = StateNotifierProvider<MultiShopCartNotifier, MultiShopCartState>((ref) {
  return MultiShopCartNotifier(ref.watch(multiShopCartRepositoryProvider));
});
