import '../models/banner_model.dart';
import '../models/category_model.dart';
import '../models/shop_model.dart';
import '../models/product_model.dart';
import '../models/deal_model.dart';
import '../../../products/data/models/sub_models/packaging_info.dart';
import '../../../products/data/models/sub_models/manufacturing_info.dart';
import '../../../products/data/models/sub_models/pricing_info.dart';
import '../../../products/data/models/sub_models/inventory_info.dart';

class DummyHomeDataSource {
  Future<List<BannerModel>> getBanners() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      const BannerModel(
          id: '1',
          imageUrl:
              'https://img.freepik.com/free-vector/grocery-delivery-service-banner-template_23-2148781585.jpg'),
      const BannerModel(
          id: '2',
          imageUrl:
              'https://img.freepik.com/free-vector/flat-grocery-delivery-service-horizontal-banner_23-2148818816.jpg'),
      const BannerModel(
          id: '3',
          imageUrl:
              'https://img.freepik.com/free-vector/fresh-food-delivery-service-banner_23-2148818815.jpg'),
    ];
  }

  Future<List<CategoryModel>> getCategories() async {
    return [
      const CategoryModel(id: '1', name: 'Milk & Dairy', image: '🥛'),
      const CategoryModel(id: '2', name: 'Vegetables', image: '🥦'),
      const CategoryModel(id: '3', name: 'Fruits', image: '🍎'),
      const CategoryModel(id: '4', name: 'Atta & Dal', image: '🌾'),
      const CategoryModel(id: '5', name: 'Snacks', image: '🍿'),
      const CategoryModel(id: '6', name: 'Beverages', image: '🥤'),
      const CategoryModel(id: '7', name: 'Meat & Fish', image: '🥩'),
      const CategoryModel(id: '8', name: 'Bakery', image: '🍞'),
    ];
  }

  Future<List<ShopModel>> getPopularShops() async {
    return [
      const ShopModel(
        id: '1',
        name: 'Yadav Dairy Farm',
        category: 'Dairy & Eggs',
        rating: 4.8,
        deliveryTime: '12 min',
        imageUrl: '',
        distance: '1.2 km',
        minOrder: '₹50',
      ),
      const ShopModel(
        id: '2',
        name: 'Village Veg Mart',
        category: 'Fruits & Veg',
        rating: 4.5,
        deliveryTime: '15 min',
        imageUrl: '',
        distance: '2.5 km',
        minOrder: '₹30',
      ),
      const ShopModel(
        id: '3',
        name: 'Sharma General Store',
        category: 'Grocery',
        rating: 4.2,
        deliveryTime: '20 min',
        imageUrl: '',
        distance: '0.8 km',
        minOrder: '₹100',
      ),
    ];
  }

  Future<List<ProductModel>> getFeaturedProducts() async {
    return [
      const ProductModel(
        id: '1',
        name: 'Fresh Cow Milk',
        imageUrl: '',
        category: 'Milk & Dairy',
        packaging: PackagingInfo(weight: 500, unit: 'ml'),
        manufacturing: ManufacturingInfo(
            manufacturer: 'Yadav Dairy',
            packedBy: 'Yadav Dairy',
            countryOfOrigin: 'India'),
        pricing: PricingInfo(mrp: 32, sellingPrice: 28, discountPercentage: 12),
        inventory: InventoryInfo(isBestseller: true),
        rating: 4.5,
      ),
      const ProductModel(
        id: '2',
        name: 'Organic Wheat Atta',
        imageUrl: '',
        category: 'Atta & Dal',
        packaging: PackagingInfo(weight: 5, unit: 'kg'),
        manufacturing: ManufacturingInfo(
            manufacturer: 'Village Fresh',
            packedBy: 'Village Fresh',
            countryOfOrigin: 'India'),
        pricing:
            PricingInfo(mrp: 210, sellingPrice: 180, discountPercentage: 14),
        inventory: InventoryInfo(isNewArrival: true),
        rating: 4.8,
      ),
      const ProductModel(
        id: '3',
        name: 'Basmati Rice Premium',
        imageUrl: '',
        category: 'Atta & Dal',
        packaging: PackagingInfo(weight: 5, unit: 'kg'),
        manufacturing: ManufacturingInfo(
            manufacturer: 'Organic Farms',
            packedBy: 'Organic Farms',
            countryOfOrigin: 'India'),
        pricing:
            PricingInfo(mrp: 500, sellingPrice: 450, discountPercentage: 10),
        rating: 4.6,
      ),
    ];
  }

  Future<List<DealModel>> getTodayDeals() async {
    final products = await getFeaturedProducts();
    return [
      DealModel(id: '1', title: 'Flash Deal', product: products[0]),
      DealModel(id: '2', title: 'BOGO', product: products[1]),
    ];
  }
}
