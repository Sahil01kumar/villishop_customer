import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:villishop_customer/features/wishlist/data/repositories/wishlist_repository_impl.dart';
import 'package:villishop_customer/features/wishlist/providers/wishlist_state.dart';
import '../../../../core/services/shared_pref_service.dart';
import '../../home/data/models/product_model.dart';

final wishlistRepositoryProvider = Provider<WishlistRepository>((ref) {
  return WishlistRepositoryImpl(ref.watch(sharedPreferencesServiceProvider));
});

class WishlistNotifier extends StateNotifier<WishlistState> {
  final WishlistRepository _repository;

  WishlistNotifier(this._repository) : super(const WishlistState()) {
    init();
  }

  Future<void> init() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final products = await _repository.getWishlistProducts();
      final shops = await _repository.getFavouriteShops();
      final collections = await _repository.getCollections();

      state = state.copyWith(
        isLoading: false,
        products: products,
        shops: shops,
        collections: collections,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> toggleProductWishlist(ProductModel product) async {
    if (_repository is WishlistRepositoryImpl) {
      await (_repository as WishlistRepositoryImpl).toggleProduct(product);
    } else {
      await _repository.addToWishlist(product.id);
    }
    await init();
  }

  bool isProductWishlisted(String productId) {
    return state.products.any((p) => p.product.id == productId);
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

  Future<void> refresh() => init();
}

final wishlistProvider = StateNotifierProvider<WishlistNotifier, WishlistState>((ref) {
  return WishlistNotifier(ref.watch(wishlistRepositoryProvider));
});
