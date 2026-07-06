import '../../../data/models/banner_model.dart';
import '../../../data/models/category_model.dart';
import '../../../data/models/shop_model.dart';
import '../../../data/models/product_model.dart';
import '../../../data/models/deal_model.dart';

abstract class BannerRepository {
  Future<List<BannerModel>> getBanners();
}

abstract class CategoryRepository {
  Future<List<CategoryModel>> getCategories();
}

abstract class ShopRepository {
  Future<List<ShopModel>> getPopularShops();
  Future<List<ShopModel>> getShopsByCategory(String categoryId);
}

abstract class ProductRepository {
  Future<List<ProductModel>> getFeaturedProducts();
  Future<List<ProductModel>> getProductsByShop(String shopId);
}

abstract class OfferRepository {
  Future<List<DealModel>> getTodayDeals();
}
