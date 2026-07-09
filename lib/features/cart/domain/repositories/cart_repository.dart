import 'package:villishop_customer/features/cart/data/models/cart_model.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';

abstract class CartRepository {
  Future<CartModel> getCart();
  Future<void> addItem(ProductModel product, int quantity);
  Future<void> removeItem(String shopId, String productId);
  Future<void> updateQuantity(String shopId, String productId, int quantity);
  Future<void> clearShopCart(String shopId);
  Future<void> clearAll();
  Future<void> toggleShopSelection(String shopId, bool isSelected);
  Future<void> toggleShopExpansion(String shopId, bool isExpanded);
  Future<void> saveForLater(String productId);
  Future<void> moveToWishlist(String productId);
  Future<void> syncCartWithServer();
}
