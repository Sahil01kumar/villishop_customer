import '../../../home/data/models/product_model.dart';
import '../../../home/data/models/shop_model.dart';

abstract class SearchRepository {
  Future<List<String>> getRecentSearches();
  Future<List<String>> getTrendingSearches();
  Future<void> saveSearch(String query);
  Future<void> clearHistory();
  Future<List<ProductModel>> searchProducts(String query);
  Future<List<ShopModel>> searchShops(String query);
}
