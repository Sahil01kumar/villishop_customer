import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/cart_repository.dart';
import '../data/repositories/cart_repository_impl.dart';
import '../data/models/cart_item_model.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'package:villishop_customer/features/products/data/models/sub_models/inventory_info.dart';
import 'cart_state.dart';

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepositoryImpl();
});

class CartNotifier extends StateNotifier<CartState> {
  final CartRepository _repository;
  // ignore: unused_field
  CartItemModel? _lastRemovedItem;
  // ignore: unused_field
  int? _lastRemovedIndex;

  CartNotifier(this._repository) : super(const CartState()) {
    loadCart();
  }

  Future<void> loadCart() async {
    state = state.copyWith(isLoading: true);
    final cart = await _repository.getCart();
    state = state.copyWith(isLoading: false, cart: cart);
  }

  Future<void> addToCart(ProductModel product, {int quantity = 1}) async {
    if (product.inventory.stockStatus == StockStatus.outOfStock) {
      state = state.copyWith(errorMessage: 'Product is out of stock');
      return;
    }
    
    await _repository.addToCart(product, quantity: quantity);
    await loadCart();
  }

  Future<void> removeFromCart(String productId) async {
    final index = state.cart.items.indexWhere((i) => i.product.id == productId);
    if (index != -1) {
      _lastRemovedItem = state.cart.items[index];
      _lastRemovedIndex = index;
    }
    
    await _repository.removeFromCart(productId);
    await loadCart();
  }

  Future<void> undoRemove() async {
    if (_lastRemovedItem != null) {
      await _repository.addToCart(_lastRemovedItem!.product, quantity: _lastRemovedItem!.quantity);
      _lastRemovedItem = null;
      _lastRemovedIndex = null;
      await loadCart();
    }
  }

  Future<void> incrementQuantity(String productId) async {
    final item = state.cart.items.firstWhere((i) => i.product.id == productId);
    
    if (item.quantity >= item.product.inventory.maxOrderQuantity) {
      state = state.copyWith(errorMessage: 'Maximum quantity reached');
      return;
    }

    if (item.quantity >= item.product.inventory.availableQuantity) {
      state = state.copyWith(errorMessage: 'Not enough stock available');
      return;
    }

    await _repository.updateQuantity(productId, item.quantity + 1);
    await loadCart();
  }

  Future<void> decrementQuantity(String productId) async {
    final item = state.cart.items.firstWhere((i) => i.product.id == productId);
    
    if (item.quantity > item.product.inventory.minOrderQuantity) {
      await _repository.updateQuantity(productId, item.quantity - 1);
    } else {
      await removeFromCart(productId);
    }
    await loadCart();
  }

  Future<void> updateManualQuantity(String productId, int quantity) async {
    if (quantity <= 0) {
      await removeFromCart(productId);
    } else {
      final item = state.cart.items.firstWhere((i) => i.product.id == productId);
      int validQty = quantity;
      if (validQty > item.product.inventory.maxOrderQuantity) validQty = item.product.inventory.maxOrderQuantity;
      if (validQty > item.product.inventory.availableQuantity) validQty = item.product.inventory.availableQuantity;
      
      await _repository.updateQuantity(productId, validQty);
    }
    await loadCart();
  }

  Future<void> saveForLater(String productId) async {
    await _repository.saveForLater(productId);
    await loadCart();
  }

  Future<void> moveToWishlist(String productId) async {
    await _repository.moveToWishlist(productId);
    await loadCart();
  }

  Future<void> clearCart() async {
    await _repository.clearCart();
    await loadCart();
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, CartState>((ref) {
  return CartNotifier(ref.watch(cartRepositoryProvider));
});

final cartCountProvider = Provider<int>((ref) {
  return ref.watch(cartProvider).cart.summary.totalQuantity;
});
