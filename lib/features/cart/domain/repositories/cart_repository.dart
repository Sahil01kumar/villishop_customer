import 'package:villishop_customer/features/cart/data/models/cart_model.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';

abstract class CartRepository {
  Future<CartModel> getCart();
  Future<void> addToCart(ProductModel product, {int quantity = 1});
  Future<void> removeFromCart(String productId);
  Future<void> updateQuantity(String productId, int quantity);
  Future<void> clearCart();
  Future<void> saveForLater(String productId);
  Future<void> moveToWishlist(String productId);
  Future<void> syncCartWithServer();
}
