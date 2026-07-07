import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:villishop_customer/features/wishlist/data/repositories/wishlist_repository_impl.dart';
import 'package:villishop_customer/features/wishlist/providers/wishlist_state.dart';
import '../data/models/wishlist_product_model.dart';
import '../data/models/favourite_shop_model.dart';
import '../data/models/wishlist_collection_model.dart';

final wishlistRepositoryProvider = Provider<WishlistRepository>((ref) {
  return WishlistRepositoryImpl();
});

class WishlistNotifier extends StateNotifier<WishlistState> {
  final WishlistRepository _repository;

  WishlistNotifier(this._repository) : super(const WishlistState()) {
    init();
  }

  Future<void> init() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final results = await Future.wait([
        _repository.getWishlistProducts(),
        _repository.getFavouriteShops(),
        _repository.getCollections(),
        _repository.getRecentlyViewedProducts(),
        _repository.getRecentlyVisitedShops(),
      ]);

      state = state.copyWith(
        isLoading: false,
        products: (results[0] as List).cast<WishlistProductModel>(),
        shops: (results[1] as List).cast<FavouriteShopModel>(),
        collections: (results[2] as List).cast<WishlistCollectionModel>(),
        recentlyViewedProducts: (results[3] as List).cast<WishlistProductModel>(),
        recentlyVisitedShops: (results[4] as List).cast<FavouriteShopModel>(),
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> removeFromWishlist(String productId) async {
    await _repository.removeFromWishlist(productId);
    await init();
  }

  Future<void> removeShopFromFavourites(String shopId) async {
    await _repository.removeShopFromFavourites(shopId);
    await init();
  }

  void updateProductSearch(String query) {
    state = state.copyWith(productSearchQuery: query);
  }

  void updateShopSearch(String query) {
    state = state.copyWith(shopSearchQuery: query);
  }

  Future<void> refresh() => init();
}

final wishlistProvider = StateNotifierProvider<WishlistNotifier, WishlistState>((ref) {
  return WishlistNotifier(ref.watch(wishlistRepositoryProvider));
});
