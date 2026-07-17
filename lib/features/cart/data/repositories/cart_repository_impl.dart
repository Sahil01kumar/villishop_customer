import 'dart:convert';
import '../../domain/repositories/cart_repository.dart';
import '../models/cart_model.dart';
import '../models/shop_cart_model.dart';
import '../models/cart_item_model.dart';
import '../models/shop_summary_model.dart';
import '../models/cart_summary_model.dart';
import '../../../home/data/models/product_model.dart';
import '../../../delivery/data/models/delivery_config_model.dart';
import '../../../delivery/domain/services/delivery_charge_calculator.dart';
import '../../../../core/services/shared_pref_service.dart';
import '../../../../core/persistence/persistence_keys.dart';

class CartRepositoryImpl implements CartRepository {
  final SharedPreferenceService? _prefs;
  CartModel _currentCart = const CartModel();

  CartRepositoryImpl([this._prefs]) {
    _loadCartFromPrefs();
  }

  // Delivery configuration (Enterprise ready)
  final DeliveryConfigModel _deliveryConfig = const DeliveryConfigModel(
    tiers: [
      DeliveryTier(minOrderValue: 0, maxOrderValue: 198.99, charge: 19),
      DeliveryTier(
          minOrderValue: 199, maxOrderValue: double.infinity, charge: 0),
    ],
    defaultBaseCharge: 19.0,
    isPremiumMembershipFree: true,
  );

  Future<void> _loadCartFromPrefs() async {
    if (_prefs == null) return;
    final jsonStr = _prefs!.getString(PersistenceKeys.cart);
    if (jsonStr != null) {
      try {
        _currentCart = CartModel.fromJson(jsonDecode(jsonStr));
      } catch (_) {}
    }
  }

  Future<void> _saveCartToPrefs() async {
    if (_prefs == null) return;
    await _prefs!
        .setString(PersistenceKeys.cart, jsonEncode(_currentCart.toJson()));
  }

  @override
  Future<CartModel> getCart() async {
    if (_currentCart.shopCarts.isEmpty) {
      await _loadCartFromPrefs();
    }
    return _currentCart;
  }

  @override
  Future<void> addItem(ProductModel product, int quantity) async {
    final shopId = product.shopId ?? 'local_shop';
    final shopName = product.shopName ?? 'Local Shop';

    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);
    final shopIndex = updatedShopCarts.indexWhere((s) => s.shopId == shopId);

    if (shopIndex != -1) {
      final shopCart = updatedShopCarts[shopIndex];
      List<CartItemModel> items = List.from(shopCart.items);
      final itemIndex = items.indexWhere((i) => i.product.id == product.id);

      if (itemIndex != -1) {
        items[itemIndex] = items[itemIndex].copyWith(
          quantity: items[itemIndex].quantity + quantity,
        );
      } else {
        items.add(CartItemModel(
            product: product, quantity: quantity, addedAt: DateTime.now()));
      }
      updatedShopCarts[shopIndex] =
          _calculateShopCart(shopCart.copyWith(items: items));
    } else {
      final newShopCart = ShopCartModel(
        shopId: shopId,
        shopName: shopName,
        items: [
          CartItemModel(
              product: product, quantity: quantity, addedAt: DateTime.now())
        ],
      );
      updatedShopCarts.add(_calculateShopCart(newShopCart));
    }

    await _updateOverallCart(updatedShopCarts);
  }

  @override
  Future<void> removeItem(String shopId, String productId) async {
    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);

    int shopIndex = -1;
    if (shopId.isEmpty || shopId == 'local_shop') {
      shopIndex = updatedShopCarts
          .indexWhere((s) => s.items.any((i) => i.product.id == productId));
    } else {
      shopIndex = updatedShopCarts.indexWhere((s) => s.shopId == shopId);
    }

    if (shopIndex != -1) {
      final shopCart = updatedShopCarts[shopIndex];
      final items =
          shopCart.items.where((i) => i.product.id != productId).toList();

      if (items.isEmpty) {
        updatedShopCarts.removeAt(shopIndex);
      } else {
        updatedShopCarts[shopIndex] =
            _calculateShopCart(shopCart.copyWith(items: items));
      }
      await _updateOverallCart(updatedShopCarts);
    }
  }

  @override
  Future<void> updateQuantity(
      String shopId, String productId, int quantity) async {
    if (quantity <= 0) {
      await removeItem(shopId, productId);
      return;
    }

    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);

    int shopIndex = -1;
    if (shopId.isEmpty || shopId == 'local_shop') {
      shopIndex = updatedShopCarts
          .indexWhere((s) => s.items.any((i) => i.product.id == productId));
    } else {
      shopIndex = updatedShopCarts.indexWhere((s) => s.shopId == shopId);
    }

    if (shopIndex != -1) {
      final shopCart = updatedShopCarts[shopIndex];
      List<CartItemModel> items = List.from(shopCart.items);
      final itemIndex = items.indexWhere((i) => i.product.id == productId);

      if (itemIndex != -1) {
        items[itemIndex] = items[itemIndex].copyWith(quantity: quantity);
        updatedShopCarts[shopIndex] =
            _calculateShopCart(shopCart.copyWith(items: items));
        await _updateOverallCart(updatedShopCarts);
      }
    }
  }

  @override
  Future<void> clearShopCart(String shopId) async {
    List<ShopCartModel> updatedShopCarts =
        _currentCart.shopCarts.where((s) => s.shopId != shopId).toList();
    await _updateOverallCart(updatedShopCarts);
  }

  @override
  Future<void> clearAll() async {
    await _updateOverallCart([]);
  }

  @override
  Future<void> toggleShopSelection(String shopId, bool isSelected) async {
    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);
    final index = updatedShopCarts.indexWhere((s) => s.shopId == shopId);
    if (index != -1) {
      updatedShopCarts[index] =
          updatedShopCarts[index].copyWith(isSelected: isSelected);
      await _updateOverallCart(updatedShopCarts);
    }
  }

  @override
  Future<void> toggleShopExpansion(String shopId, bool isExpanded) async {
    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);
    final index = updatedShopCarts.indexWhere((s) => s.shopId == shopId);
    if (index != -1) {
      updatedShopCarts[index] =
          updatedShopCarts[index].copyWith(isExpanded: isExpanded);
      await _updateOverallCart(updatedShopCarts);
    }
  }

  @override
  Future<void> saveForLater(String productId) async {}

  @override
  Future<void> moveToWishlist(String productId) async {
    await removeItem('', productId);
  }

  @override
  Future<void> syncCartWithServer() async {}

  ShopCartModel _calculateShopCart(ShopCartModel shopCart) {
    double subTotal = 0;
    double discount = 0;
    for (var item in shopCart.items) {
      subTotal += item.product.pricing.mrp * item.quantity;
      discount +=
          (item.product.pricing.mrp - item.product.pricing.sellingPrice) *
              item.quantity;
    }

    final double merchandiseSubtotal = subTotal - discount;
    double deliveryCharge =
        DeliveryChargeCalculator.calculate(merchandiseSubtotal);

    // Apply global configuration overrides
    if (_deliveryConfig.isFestivalCampaignActive ||
        _deliveryConfig.isPremiumMembershipFree) {
      deliveryCharge = 0.0;
    }

    const packagingCharge = 5.0;
    final tax = merchandiseSubtotal * 0.05;

    return shopCart.copyWith(
      summary: ShopSummaryModel(
        subTotal: subTotal,
        totalDiscount: discount,
        deliveryCharge: deliveryCharge,
        packagingCharge: packagingCharge,
        taxAmount: tax,
        grandTotal:
            merchandiseSubtotal + deliveryCharge + packagingCharge + tax,
      ),
    );
  }

  Future<void> _updateOverallCart(List<ShopCartModel> shopCarts) async {
    double subTotal = 0;
    double discount = 0;
    double delivery = 0;
    double packaging = 0;
    double tax = 0;
    int totalItems = 0;
    int totalQty = 0;

    for (var shopCart in shopCarts) {
      if (shopCart.isSelected) {
        subTotal += shopCart.summary.subTotal;
        discount += shopCart.summary.totalDiscount;
        delivery += shopCart.summary.deliveryCharge;
        packaging += shopCart.summary.packagingCharge;
        tax += shopCart.summary.taxAmount;
        totalItems += shopCart.items.length;
        totalQty += shopCart.items.fold(0, (sum, i) => sum + i.quantity);
      }
    }

    _currentCart = _currentCart.copyWith(
      shopCarts: shopCarts,
      overallSummary: CartSummaryModel(
        subTotal: subTotal,
        totalDiscount: discount,
        deliveryCharge: delivery,
        packagingCharge: packaging,
        totalTax: tax,
        totalItems: totalItems,
        totalQuantity: totalQty,
        grandTotal: (subTotal - discount) + delivery + packaging + tax,
      ),
    );
    await _saveCartToPrefs();
  }
}
