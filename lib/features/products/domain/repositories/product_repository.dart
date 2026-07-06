import '../../../home/data/models/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> getProducts({
    String? shopId,
    String? categoryId,
    String? searchQuery,
    String? sortBy,
    Map<String, dynamic>? filters,
  });
  
  Future<ProductModel?> getProductDetails(String productId);
  Future<List<String>> getProductCategories(String shopId);
  Future<List<String>> getProductBrands(String shopId);
}
