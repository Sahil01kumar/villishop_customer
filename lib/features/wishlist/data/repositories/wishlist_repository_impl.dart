import 'dart:convert';
import '../../../../core/services/shared_pref_service.dart';
import '../../domain/repositories/wishlist_repository.dart';
import '../models/wishlist_product_model.dart';
import '../models/favourite_shop_model.dart';
import '../models/wishlist_collection_model.dart';
import '../../../home/data/models/product_model.dart';
import '../../../../core/persistence/persistence_keys.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  final SharedPreferenceService _prefs;

  WishlistRepositoryImpl(this._prefs);

  @override
  Future<List<WishlistProductModel>> getWishlistProducts() async {
    final String? jsonStr = _prefs.getString(PersistenceKeys.wishlist);
    if (jsonStr == null) return [];
    try {
      final List<dynamic> list = jsonDecode(jsonStr);
      return list.map((item) => WishlistProductModel.fromJson(item)).toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Future<void> addToWishlist(String productId) async {}

  Future<void> toggleProduct(ProductModel product) async {
    final products = await getWishlistProducts();
    final index = products.indexWhere((p) => p.product.id == product.id);

    if (index != -1) {
      products.removeAt(index);
    } else {
      products
          .add(WishlistProductModel(product: product, addedAt: DateTime.now()));
    }

    await _prefs.setString(PersistenceKeys.wishlist,
        jsonEncode(products.map((p) => p.toJson()).toList()));
  }

  @override
  Future<void> removeFromWishlist(String productId) async {
    final products = await getWishlistProducts();
    products.removeWhere((p) => p.product.id == productId);
    await _prefs.setString(PersistenceKeys.wishlist,
        jsonEncode(products.map((p) => p.toJson()).toList()));
  }

  @override
  Future<void> clearWishlist() async {
    await _prefs.remove(PersistenceKeys.wishlist);
  }

  @override
  Future<List<FavouriteShopModel>> getFavouriteShops() async {
    // For brevity, not using a key for shops yet as per requirement focus on products
    return [];
  }

  @override
  Future<void> addShopToFavourites(String shopId) async {}

  @override
  Future<void> removeShopFromFavourites(String shopId) async {}

  @override
  Future<List<WishlistCollectionModel>> getCollections() async => [];

  @override
  Future<void> createCollection(String name, String? description) async {}

  @override
  Future<void> addItemToCollection(
      String collectionId, String productId) async {}

  @override
  Future<void> removeItemFromCollection(
      String collectionId, String productId) async {}

  @override
  Future<void> deleteCollection(String collectionId) async {}

  @override
  Future<List<WishlistProductModel>> getRecentlyViewedProducts() async => [];

  @override
  Future<List<FavouriteShopModel>> getRecentlyVisitedShops() async => [];
}
