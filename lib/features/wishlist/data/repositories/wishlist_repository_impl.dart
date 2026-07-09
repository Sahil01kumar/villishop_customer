import 'dart:convert';
import '../../../../core/services/shared_pref_service.dart';
import '../../domain/repositories/wishlist_repository.dart';
import '../models/wishlist_product_model.dart';
import '../models/favourite_shop_model.dart';
import '../models/wishlist_collection_model.dart';
import '../../../home/data/models/product_model.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  final SharedPreferenceService _prefs;
  static const String _wishlistKey = 'user_wishlist_products';
  static const String _favShopsKey = 'user_fav_shops';

  WishlistRepositoryImpl(this._prefs);

  @override
  Future<List<WishlistProductModel>> getWishlistProducts() async {
    final String? jsonStr = _prefs.getString(_wishlistKey);
    if (jsonStr == null) return [];
    try {
      final List<dynamic> list = jsonDecode(jsonStr);
      return list.map((item) => WishlistProductModel.fromJson(item)).toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Future<void> addToWishlist(String productId) async {
    // This is the old interface. New logic uses toggleProduct.
  }

  // Improved to handle full product model as required for synchronization
  Future<void> toggleProduct(ProductModel product) async {
    final products = await getWishlistProducts();
    final index = products.indexWhere((p) => p.product.id == product.id);
    
    if (index != -1) {
      products.removeAt(index);
    } else {
      products.add(WishlistProductModel(product: product, addedAt: DateTime.now()));
    }
    
    await _prefs.setString(_wishlistKey, jsonEncode(products.map((p) => p.toJson()).toList()));
  }

  @override
  Future<void> removeFromWishlist(String productId) async {
    final products = await getWishlistProducts();
    products.removeWhere((p) => p.product.id == productId);
    await _prefs.setString(_wishlistKey, jsonEncode(products.map((p) => p.toJson()).toList()));
  }

  @override
  Future<void> clearWishlist() async {
    await _prefs.remove(_wishlistKey);
  }

  @override
  Future<List<FavouriteShopModel>> getFavouriteShops() async {
    final String? jsonStr = _prefs.getString(_favShopsKey);
    if (jsonStr == null) return [];
    try {
      final List<dynamic> list = jsonDecode(jsonStr);
      return list.map((item) => FavouriteShopModel.fromJson(item)).toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Future<void> addShopToFavourites(String shopId) async {}

  @override
  Future<void> removeShopFromFavourites(String shopId) async {
    final shops = await getFavouriteShops();
    shops.removeWhere((s) => s.shop.id == shopId);
    await _prefs.setString(_favShopsKey, jsonEncode(shops.map((s) => s.toJson()).toList()));
  }

  @override
  Future<List<WishlistCollectionModel>> getCollections() async => [];

  @override
  Future<void> createCollection(String name, String? description) async {}

  @override
  Future<void> addItemToCollection(String collectionId, String productId) async {}

  @override
  Future<void> removeItemFromCollection(String collectionId, String productId) async {}

  @override
  Future<void> deleteCollection(String collectionId) async {}

  @override
  Future<List<WishlistProductModel>> getRecentlyViewedProducts() async => [];

  @override
  Future<List<FavouriteShopModel>> getRecentlyVisitedShops() async => [];
}
