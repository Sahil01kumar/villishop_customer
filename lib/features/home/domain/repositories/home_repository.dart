import '../../data/models/banner_model.dart';
import '../../data/models/category_model.dart';
import '../../data/models/shop_model.dart';
import '../../data/models/product_model.dart';
import '../../data/models/deal_model.dart';

abstract class HomeRepository {
  Future<List<BannerModel>> getBanners();
  Future<List<CategoryModel>> getCategories();
  Future<List<ShopModel>> getPopularShops();
  Future<List<ProductModel>> getFeaturedProducts();
  Future<List<DealModel>> getTodayDeals();
}
