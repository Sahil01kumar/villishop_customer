import '../../domain/repositories/home_repository.dart';
import '../data_sources/dummy_home_data_source.dart';
import '../models/banner_model.dart';
import '../models/category_model.dart';
import '../models/shop_model.dart';
import '../models/product_model.dart';
import '../models/deal_model.dart';
import '../../../categories/domain/repositories/category_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final DummyHomeDataSource _dataSource;
  final CategoryRepository _categoryRepository;

  HomeRepositoryImpl(this._dataSource, this._categoryRepository);

  @override
  Future<List<BannerModel>> getBanners({String? zoneId}) =>
      _dataSource.getBanners(zoneId: zoneId);

  @override
  Future<List<CategoryModel>> getCategories({String? zoneId}) =>
      _categoryRepository.getCategories(); // Sub-repo might need zoneId too

  @override
  Future<List<ShopModel>> getPopularShops({String? zoneId}) =>
      _dataSource.getPopularShops(zoneId: zoneId);

  @override
  Future<List<ProductModel>> getFeaturedProducts({String? zoneId}) =>
      _dataSource.getFeaturedProducts(zoneId: zoneId);

  @override
  Future<List<DealModel>> getTodayDeals({String? zoneId}) =>
      _dataSource.getTodayDeals(zoneId: zoneId);

  @override
  Future<List<ProductModel>> getBestSellers({String? zoneId}) =>
      _dataSource.getBestSellers(zoneId: zoneId);

  @override
  Future<List<ProductModel>> getNewArrivals({String? zoneId}) =>
      _dataSource.getNewArrivals(zoneId: zoneId);

  @override
  Future<List<ProductModel>> getSeasonalCollection({String? zoneId}) =>
      _dataSource.getSeasonalCollection(zoneId: zoneId);
}
