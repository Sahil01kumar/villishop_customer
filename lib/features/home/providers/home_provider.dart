import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/banner_model.dart';
import '../data/models/category_model.dart';
import '../data/models/shop_model.dart';
import '../data/models/product_model.dart';
import '../data/models/deal_model.dart';
import '../domain/repositories/home_repository.dart';
import '../data/repositories/home_repository_impl.dart';
import '../data/data_sources/dummy_home_data_source.dart';
import '../../categories/providers/category_provider.dart';

part 'home_provider.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool isLoading,
    @Default([]) List<BannerModel> banners,
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<ShopModel> popularShops,
    @Default([]) List<ProductModel> featuredProducts,
    @Default([]) List<DealModel> todayDeals,
    @Default([]) List<ProductModel> bestSellers,
    @Default([]) List<ProductModel> newArrivals,
    @Default([]) List<ProductModel> seasonalCollection,
    String? errorMessage,
  }) = _HomeState;
}

final homeDataSourceProvider = Provider((ref) => DummyHomeDataSource());

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepositoryImpl(
    ref.watch(homeDataSourceProvider),
    ref.watch(categoryRepositoryProvider),
  );
});

class HomeController extends StateNotifier<HomeState> {
  final HomeRepository _repository;

  HomeController(this._repository) : super(const HomeState()) {
    fetchHomeData();
  }

  Future<void> fetchHomeData() async {
    try {
      state = state.copyWith(isLoading: true, errorMessage: null);

      final results = await Future.wait([
        _repository.getBanners(),
        _repository.getCategories(),
        _repository.getPopularShops(),
        _repository.getFeaturedProducts(),
        _repository.getTodayDeals(),
        _repository.getBestSellers(),
        _repository.getNewArrivals(),
        _repository.getSeasonalCollection(),
      ]);

      state = state.copyWith(
        isLoading: false,
        banners: results[0] as List<BannerModel>,
        categories: results[1] as List<CategoryModel>,
        popularShops: results[2] as List<ShopModel>,
        featuredProducts: results[3] as List<ProductModel>,
        todayDeals: results[4] as List<DealModel>,
        bestSellers: results[5] as List<ProductModel>,
        newArrivals: results[6] as List<ProductModel>,
        seasonalCollection: results[7] as List<ProductModel>,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> refresh() => fetchHomeData();
}

final homeProvider = StateNotifierProvider<HomeController, HomeState>((ref) {
  return HomeController(ref.watch(homeRepositoryProvider));
});
