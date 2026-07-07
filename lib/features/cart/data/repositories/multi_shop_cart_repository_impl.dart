import '../../domain/repositories/multi_shop_cart_repository.dart';
import '../models/multi_shop_cart_model.dart';
import '../models/shop_cart_model.dart';
import '../models/cart_item_model.dart';
import '../models/shop_summary_model.dart';
import '../models/cart_summary_model.dart';
import '../../../home/data/models/product_model.dart';

class MultiShopCartRepositoryImpl implements MultiShopCartRepository {
  MultiShopCartModel _currentCart = const MultiShopCartModel();

  @override
  Future<MultiShopCartModel> getMultiShopCart() async {
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
        items.add(CartItemModel(product: product, quantity: quantity, addedAt: DateTime.now()));
      }
      updatedShopCarts[shopIndex] = _calculateShopCart(shopCart.copyWith(items: items));
    } else {
      final newShopCart = ShopCartModel(
        shopId: shopId,
        shopName: shopName,
        items: [CartItemModel(product: product, quantity: quantity, addedAt: DateTime.now())],
      );
      updatedShopCarts.add(_calculateShopCart(newShopCart));
    }

    _updateOverallCart(updatedShopCarts);
  }

  @override
  Future<void> removeItem(String shopId, String productId) async {
    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);
    final shopIndex = updatedShopCarts.indexWhere((s) => s.shopId == shopId);

    if (shopIndex != -1) {
      final shopCart = updatedShopCarts[shopIndex];
      final items = shopCart.items.where((i) => i.product.id != productId).toList();
      
      if (items.isEmpty) {
        updatedShopCarts.removeAt(shopIndex);
      } else {
        updatedShopCarts[shopIndex] = _calculateShopCart(shopCart.copyWith(items: items));
      }
      _updateOverallCart(updatedShopCarts);
    }
  }

  @override
  Future<void> updateQuantity(String shopId, String productId, int quantity) async {
    if (quantity <= 0) {
      await removeItem(shopId, productId);
      return;
    }

    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);
    final shopIndex = updatedShopCarts.indexWhere((s) => s.shopId == shopId);

    if (shopIndex != -1) {
      final shopCart = updatedShopCarts[shopIndex];
      List<CartItemModel> items = List.from(shopCart.items);
      final itemIndex = items.indexWhere((i) => i.product.id == productId);

      if (itemIndex != -1) {
        items[itemIndex] = items[itemIndex].copyWith(quantity: quantity);
        updatedShopCarts[shopIndex] = _calculateShopCart(shopCart.copyWith(items: items));
        _updateOverallCart(updatedShopCarts);
      }
    }
  }

  @override
  Future<void> clearShopCart(String shopId) async {
    List<ShopCartModel> updatedShopCarts = _currentCart.shopCarts.where((s) => s.shopId != shopId).toList();
    _updateOverallCart(updatedShopCarts);
  }

  @override
  Future<void> clearAll() async {
    _updateOverallCart([]);
  }

  @override
  Future<void> toggleShopSelection(String shopId, bool isSelected) async {
    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);
    final index = updatedShopCarts.indexWhere((s) => s.shopId == shopId);
    if (index != -1) {
      updatedShopCarts[index] = updatedShopCarts[index].copyWith(isSelected: isSelected);
      _updateOverallCart(updatedShopCarts);
    }
  }

  @override
  Future<void> toggleShopExpansion(String shopId, bool isExpanded) async {
    List<ShopCartModel> updatedShopCarts = List.from(_currentCart.shopCarts);
    final index = updatedShopCarts.indexWhere((s) => s.shopId == shopId);
    if (index != -1) {
      updatedShopCarts[index] = updatedShopCarts[index].copyWith(isExpanded: isExpanded);
      _updateOverallCart(updatedShopCarts);
    }
  }

  @override
  Future<void> syncWithServer() async {}

  ShopCartModel _calculateShopCart(ShopCartModel shopCart) {
    double subTotal = 0;
    double discount = 0;
    for (var item in shopCart.items) {
      subTotal += item.product.pricing.mrp * item.quantity;
      discount += (item.product.pricing.mrp - item.product.pricing.sellingPrice) * item.quantity;
    }

    final deliveryCharge = (subTotal - discount) > 500 ? 0.0 : 15.0;
    const packagingCharge = 10.0;
    final tax = (subTotal - discount) * 0.05;

    return shopCart.copyWith(
      summary: ShopSummaryModel(
        subTotal: subTotal,
        totalDiscount: discount,
        deliveryCharge: deliveryCharge,
        packagingCharge: packagingCharge,
        taxAmount: tax,
        grandTotal: (subTotal - discount) + deliveryCharge + packagingCharge + tax,
      ),
    );
  }

  void _updateOverallCart(List<ShopCartModel> shopCarts) {
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
  }
}
