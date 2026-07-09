import 'package:villishop_customer/features/home/data/models/banner_model.dart';
import 'package:villishop_customer/features/home/data/models/category_model.dart';
import 'package:villishop_customer/features/home/data/models/shop_model.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'package:villishop_customer/features/home/data/models/deal_model.dart';

abstract class HomeRepository {
  Future<List<BannerModel>> getBanners();
  Future<List<CategoryModel>> getCategories();
  Future<List<ShopModel>> getPopularShops();
  Future<List<ProductModel>> getFeaturedProducts();
  Future<List<DealModel>> getTodayDeals();
}
