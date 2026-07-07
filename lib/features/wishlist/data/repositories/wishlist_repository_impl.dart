import '../../domain/repositories/wishlist_repository.dart';
import '../models/wishlist_product_model.dart';
import '../models/favourite_shop_model.dart';
import '../models/wishlist_collection_model.dart';
import '../../../home/data/models/product_model.dart';
import '../../../products/data/models/sub_models/packaging_info.dart';
import '../../../products/data/models/sub_models/manufacturing_info.dart';
import '../../../products/data/models/sub_models/pricing_info.dart';
import '../../../shops/data/models/shop_model.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  @override
  Future<List<WishlistProductModel>> getWishlistProducts() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      WishlistProductModel(
        product: const ProductModel(
          id: 'p1',
          name: 'Fresh Cow Milk',
          imageUrl: '',
          category: 'Dairy',
          packaging: PackagingInfo(weight: 500, unit: 'ml'),
          manufacturing: ManufacturingInfo(manufacturer: 'Yadav Dairy', packedBy: 'Yadav Dairy', countryOfOrigin: 'India'),
          pricing: PricingInfo(mrp: 32, sellingPrice: 28, discountPercentage: 12),
        ),
        addedAt: DateTime.now(),
      ),
    ];
  }

  @override
  Future<void> addToWishlist(String productId) async {}

  @override
  Future<void> removeFromWishlist(String productId) async {}

  @override
  Future<void> clearWishlist() async {}

  @override
  Future<List<FavouriteShopModel>> getFavouriteShops() async {
    await Future.delayed(const Duration(milliseconds: 400));
    return [
      FavouriteShopModel(
        shop: const ShopModel(
          id: '1',
          name: 'Yadav Dairy Farm',
          category: 'Dairy & Eggs',
          rating: 4.8,
          deliveryTime: '12 min',
          imageUrl: '',
          distance: '1.2 km',
          minOrder: '₹50',
          isOpen: true,
        ),
        addedAt: DateTime.now(),
      ),
    ];
  }

  @override
  Future<void> addShopToFavourites(String shopId) async {}

  @override
  Future<void> removeShopFromFavourites(String shopId) async {}

  @override
  Future<List<WishlistCollectionModel>> getCollections() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return [
      WishlistCollectionModel(
        id: 'c1',
        name: 'Grocery List',
        createdAt: DateTime.now(),
        items: [],
      ),
    ];
  }

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
