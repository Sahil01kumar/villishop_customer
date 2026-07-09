import '../../../home/data/models/category_model.dart';

abstract class CategoryRepository {
  /// Fetches the master category structure.
  Future<List<CategoryModel>> getCategories();

  /// Fetches categories that are active for a specific shop,
  /// including product counts for that shop.
  Future<List<CategoryModel>> getShopCategories(String shopId);

  /// Searches for categories by name or metadata.
  Future<List<CategoryModel>> searchCategories(String query);
}
