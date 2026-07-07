import '../../domain/repositories/shop_repository.dart';
import '../models/shop_model.dart';
import '../../../home/data/models/product_model.dart';
import '../../../products/data/models/sub_models/packaging_info.dart';
import '../../../products/data/models/sub_models/manufacturing_info.dart';
import '../../../products/data/models/sub_models/pricing_info.dart';
import '../../../products/data/models/sub_models/inventory_info.dart';

class ShopRepositoryImpl implements ShopRepository {
  @override
  Future<List<ShopModel>> getNearbyShops({double? latitude, double? longitude}) async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      const ShopModel(
        id: '1',
        name: 'Yadav Dairy Farm',
        category: 'Dairy & Eggs',
        rating: 4.8,
        totalReviews: 124,
        deliveryTime: '12 min',
        imageUrl: '',
        logoUrl: '',
        distance: '1.2 km',
        minOrder: '₹50',
        isOpen: true,
        deliveryCharge: '₹10',
        offers: ['20% OFF', 'Free Delivery'],
        tags: ['Fresh', 'Local'],
        isVeg: true,
        isFavourite: true,
        description: 'Providing fresh milk and dairy products directly from our farm since 1995.',
        address: '123 Village Lane, Near Panchayat Bhavan',
        policies: ['No returns on dairy', 'Contactless delivery available'],
      ),
      const ShopModel(
        id: '2',
        name: 'Village Veg Mart',
        category: 'Fruits & Veg',
        rating: 4.5,
        totalReviews: 89,
        deliveryTime: '15 min',
        imageUrl: '',
        logoUrl: '',
        distance: '2.5 km',
        minOrder: '₹30',
        isOpen: true,
        deliveryCharge: 'Free',
        offers: ['Save ₹50'],
        tags: ['Organic', 'Village'],
        isVeg: true,
        isFavourite: false,
        description: 'Farm fresh organic vegetables and fruits delivered to your doorstep.',
      ),
    ];
  }

  @override
  Future<List<ShopModel>> getShopsByCategory(String categoryId) async {
    return getNearbyShops();
  }

  @override
  Future<ShopModel?> getShopDetails(String shopId) async {
    final shops = await getNearbyShops();
    return shops.firstWhere((element) => element.id == shopId);
  }

  @override
  Future<void> toggleFavourite(String shopId) async {
    // Mock implementation
  }

  @override
  Future<List<ProductModel>> getShopProducts(String shopId, {String? categoryId}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      const ProductModel(
        id: 'p1',
        name: 'Fresh Cow Milk',
        imageUrl: '',
        category: 'Milk & Dairy',
        packaging: PackagingInfo(weight: 500, unit: 'ml'),
        manufacturing: ManufacturingInfo(manufacturer: 'Yadav Dairy', packedBy: 'Yadav Dairy', countryOfOrigin: 'India'),
        pricing: PricingInfo(mrp: 32, sellingPrice: 28, discountPercentage: 12),
        inventory: InventoryInfo(stockStatus: StockStatus.inStock),
        rating: 4.5,
      ),
      const ProductModel(
        id: 'p2',
        name: 'Pure Desi Ghee',
        imageUrl: '',
        category: 'Milk & Dairy',
        packaging: PackagingInfo(weight: 1, unit: 'kg'),
        manufacturing: ManufacturingInfo(manufacturer: 'Yadav Dairy', packedBy: 'Yadav Dairy', countryOfOrigin: 'India'),
        pricing: PricingInfo(mrp: 750, sellingPrice: 650, discountPercentage: 13),
        inventory: InventoryInfo(stockStatus: StockStatus.inStock),
        rating: 4.9,
      ),
      const ProductModel(
        id: 'p3',
        name: 'Paneer Fresh',
        imageUrl: '',
        category: 'Milk & Dairy',
        packaging: PackagingInfo(weight: 250, unit: 'gm'),
        manufacturing: ManufacturingInfo(manufacturer: 'Yadav Dairy', packedBy: 'Yadav Dairy', countryOfOrigin: 'India'),
        pricing: PricingInfo(mrp: 100, sellingPrice: 90, discountPercentage: 10),
        inventory: InventoryInfo(stockStatus: StockStatus.inStock),
        rating: 4.7,
      ),
    ];
  }
}
