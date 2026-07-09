import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/cart/domain/repositories/cart_repository.dart';
import 'package:villishop_customer/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:villishop_customer/features/cart/data/models/cart_item_model.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'package:villishop_customer/features/products/data/models/sub_models/inventory_info.dart';
import 'package:villishop_customer/features/cart/providers/cart_state.dart';
import '../../coupons/data/models/coupon_model.dart';
import '../../delivery/data/models/delivery_slot_model.dart';

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepositoryImpl();
});

class CartNotifier extends StateNotifier<CartState> {
  final CartRepository _repository;
  CartItemModel? _lastRemovedItem;

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

    await _repository.addItem(product, quantity);
    await loadCart();
  }

  Future<void> removeFromCart(String shopId, String productId) async {
    try {
      final shopCart = state.cart.shopCarts.firstWhere(
        (s) => s.shopId == shopId || s.items.any((i) => i.product.id == productId),
        orElse: () => throw Exception('Shop not found'),
      );
      final item = shopCart.items.firstWhere((i) => i.product.id == productId);
      _lastRemovedItem = item;
    } catch (_) {}
    
    await _repository.removeItem(shopId, productId);
    await loadCart();
  }

  Future<void> undoRemove() async {
    if (_lastRemovedItem != null) {
      await _repository.addItem(_lastRemovedItem!.product, _lastRemovedItem!.quantity);
      _lastRemovedItem = null;
      await loadCart();
    }
  }

  Future<void> incrementQuantity(String shopId, String productId) async {
    final shopCart = state.cart.shopCarts.firstWhere(
      (s) => s.shopId == shopId || s.items.any((i) => i.product.id == productId),
      orElse: () => throw Exception('Shop not found'),
    );
    final item = shopCart.items.firstWhere((i) => i.product.id == productId);

    if (item.quantity >= item.product.inventory.maxOrderQuantity) {
      state = state.copyWith(errorMessage: 'Maximum quantity reached');
      return;
    }

    await _repository.updateQuantity(shopId, productId, item.quantity + 1);
    await loadCart();
  }

  Future<void> decrementQuantity(String shopId, String productId) async {
    final shopCart = state.cart.shopCarts.firstWhere(
      (s) => s.shopId == shopId || s.items.any((i) => i.product.id == productId),
      orElse: () => throw Exception('Shop not found'),
    );
    final item = shopCart.items.firstWhere((i) => i.product.id == productId);

    if (item.quantity > 1) {
      await _repository.updateQuantity(shopId, productId, item.quantity - 1);
    } else {
      await removeFromCart(shopId, productId);
    }
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

  Future<void> clearCart() async {
    await _repository.clearAll();
    await loadCart();
  }
  
  void updateWithCoupon(CouponCalculationResult? result, String? code) {
    final summary = state.cart.overallSummary;
    if (result == null) {
      state = state.copyWith(
        cart: state.cart.copyWith(
          appliedCouponCode: null,
          overallSummary: summary.copyWith(
            couponDiscount: 0,
            grandTotal: (summary.subTotal - summary.totalDiscount) + summary.deliveryCharge + summary.packagingCharge + summary.totalTax,
          ),
        ),
      );
    } else {
      state = state.copyWith(
        cart: state.cart.copyWith(
          appliedCouponCode: code,
          overallSummary: summary.copyWith(
            couponDiscount: result.discountAmount,
            grandTotal: (summary.subTotal - summary.totalDiscount - result.discountAmount) + 
                       (summary.deliveryCharge - result.deliveryDiscount) + 
                       summary.packagingCharge + summary.totalTax,
          ),
        ),
      );
    }
  }

  void updateDeliverySlot(DeliverySlotModel? slot) {
    if (slot == null) return;
    
    final summary = state.cart.overallSummary;
    state = state.copyWith(
      cart: state.cart.copyWith(
        overallSummary: summary.copyWith(
          deliveryCharge: slot.deliveryCharge,
          grandTotal: (summary.subTotal - summary.totalDiscount - summary.couponDiscount) + 
                       slot.deliveryCharge + summary.packagingCharge + summary.totalTax,
        ),
      ),
    );
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, CartState>((ref) {
  return CartNotifier(ref.watch(cartRepositoryProvider));
});

final cartCountProvider = Provider<int>((ref) {
  return ref.watch(cartProvider).cart.overallSummary.totalQuantity;
});
