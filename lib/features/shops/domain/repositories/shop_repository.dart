import '../../data/models/shop_model.dart';
import '../../../home/data/models/product_model.dart';

abstract class ShopRepository {
  Future<List<ShopModel>> getNearbyShops({double? latitude, double? longitude});
  Future<List<ShopModel>> getShopsByCategory(String categoryId);
  Future<ShopModel?> getShopDetails(String shopId);
  Future<void> toggleFavourite(String shopId);
  Future<List<ProductModel>> getShopProducts(String shopId, {String? categoryId});
}
