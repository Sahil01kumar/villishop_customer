import '../../domain/repositories/home_repository.dart';
import '../data_sources/dummy_home_data_source.dart';
import '../models/banner_model.dart';
import '../models/category_model.dart';
import '../models/shop_model.dart';
import '../models/product_model.dart';
import '../models/deal_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final DummyHomeDataSource _dataSource;

  HomeRepositoryImpl(this._dataSource);

  @override
  Future<List<BannerModel>> getBanners() => _dataSource.getBanners();

  @override
  Future<List<CategoryModel>> getCategories() => _dataSource.getCategories();

  @override
  Future<List<ShopModel>> getPopularShops() => _dataSource.getPopularShops();

  @override
  Future<List<ProductModel>> getFeaturedProducts() => _dataSource.getFeaturedProducts();

  @override
  Future<List<DealModel>> getTodayDeals() => _dataSource.getTodayDeals();
}
