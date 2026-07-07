import 'package:villishop_customer/features/cart/data/models/multi_shop_cart_model.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';

abstract class MultiShopCartRepository {
  Future<MultiShopCartModel> getMultiShopCart();
  Future<void> addItem(ProductModel product, int quantity);
  Future<void> removeItem(String shopId, String productId);
  Future<void> updateQuantity(String shopId, String productId, int quantity);
  Future<void> clearShopCart(String shopId);
  Future<void> clearAll();
  Future<void> toggleShopSelection(String shopId, bool isSelected);
  Future<void> toggleShopExpansion(String shopId, bool isExpanded);
  Future<void> syncWithServer();
}
