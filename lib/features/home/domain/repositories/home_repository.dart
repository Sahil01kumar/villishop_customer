import 'package:villishop_customer/features/home/data/models/banner_model.dart';
import 'package:villishop_customer/features/home/data/models/category_model.dart';
import 'package:villishop_customer/features/home/data/models/shop_model.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'package:villishop_customer/features/home/data/models/deal_model.dart';

abstract class HomeRepository {
  Future<List<BannerModel>> getBanners({String? zoneId});
  Future<List<CategoryModel>> getCategories({String? zoneId});
  Future<List<ShopModel>> getPopularShops({String? zoneId});
  Future<List<ProductModel>> getFeaturedProducts({String? zoneId});
  Future<List<DealModel>> getTodayDeals({String? zoneId});
  Future<List<ProductModel>> getBestSellers({String? zoneId});
  Future<List<ProductModel>> getNewArrivals({String? zoneId});
  Future<List<ProductModel>> getSeasonalCollection({String? zoneId});
}
