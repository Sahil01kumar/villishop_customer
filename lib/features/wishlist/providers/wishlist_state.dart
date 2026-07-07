import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/wishlist_product_model.dart';
import '../data/models/favourite_shop_model.dart';
import '../data/models/wishlist_collection_model.dart';

part 'wishlist_state.freezed.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState({
    @Default(true) bool isLoading,
    @Default([]) List<WishlistProductModel> products,
    @Default([]) List<FavouriteShopModel> shops,
    @Default([]) List<WishlistCollectionModel> collections,
    @Default([]) List<WishlistProductModel> recentlyViewedProducts,
    @Default([]) List<FavouriteShopModel> recentlyVisitedShops,
    String? errorMessage,
    @Default('') String productSearchQuery,
    @Default('') String shopSearchQuery,
  }) = _WishlistState;
}
