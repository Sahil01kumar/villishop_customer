import 'package:villishop_customer/features/wishlist/data/models/wishlist_product_model.dart';
import 'package:villishop_customer/features/wishlist/data/models/favourite_shop_model.dart';
import 'package:villishop_customer/features/wishlist/data/models/wishlist_collection_model.dart';

abstract class WishlistRepository {
  // Products
  Future<List<WishlistProductModel>> getWishlistProducts();
  Future<void> addToWishlist(String productId);
  Future<void> removeFromWishlist(String productId);
  Future<void> clearWishlist();

  // Shops
  Future<List<FavouriteShopModel>> getFavouriteShops();
  Future<void> addShopToFavourites(String shopId);
  Future<void> removeShopFromFavourites(String shopId);

  // Collections
  Future<List<WishlistCollectionModel>> getCollections();
  Future<void> createCollection(String name, String? description);
  Future<void> addItemToCollection(String collectionId, String productId);
  Future<void> removeItemFromCollection(String collectionId, String productId);
  Future<void> deleteCollection(String collectionId);

  // Recently Viewed
  Future<List<WishlistProductModel>> getRecentlyViewedProducts();
  Future<List<FavouriteShopModel>> getRecentlyVisitedShops();
}
