import 'package:villishop_customer/features/cart/data/models/save_for_later_model.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';

abstract class SaveForLaterRepository {
  Future<List<SaveForLaterModel>> getSavedItems();
  Future<void> saveForLater(ProductModel product);
  Future<void> moveToCart(String productId);
  Future<void> removeFromSaved(String productId);
  Future<void> clearAllSaved();
  Future<List<ProductModel>> getRecentlyRemoved();
}
