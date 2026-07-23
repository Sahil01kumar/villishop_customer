import '../models/banner_model.dart';
import '../models/category_model.dart';
import '../models/shop_model.dart';
import '../models/product_model.dart';
import '../models/deal_model.dart';
import '../../../products/data/models/sub_models/packaging_info.dart';
import '../../../products/data/models/sub_models/manufacturing_info.dart';
import '../../../products/data/models/sub_models/pricing_info.dart';
import '../../../products/data/models/sub_models/inventory_info.dart';
import '../../../products/data/models/sub_models/delivery_info.dart';
import '../../../products/data/models/sub_models/health_labels.dart';

class DummyHomeDataSource {
  Future<List<BannerModel>> getBanners({String? zoneId}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return [
      const BannerModel(
        id: '1',
        imageUrl:
            'https://img.freepik.com/free-psd/grocery-store-web-banner-template_23-2148924040.jpg',
        title: 'Fresh Milk\nFrom Farm',
        subtitle: 'Pure & Organic',
      ),
      const BannerModel(
        id: '2',
        imageUrl:
            'https://img.freepik.com/free-vector/flat-food-delivery-service-facebook-cover-template_23-2149110034.jpg',
        title: 'Express\nVillage Delivery',
        subtitle: 'Under 15 Mins',
      ),
    ];
  }

  Future<List<CategoryModel>> getCategories({String? zoneId}) async {
    return [
      const CategoryModel(
        id: 'cat_fruits',
        name: 'Fruits',
        image:
            'https://images.unsplash.com/photo-1619566636858-adf3ef46400b?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 1,
        isFeatured: true,
        isActive: true,
        level: CategoryLevel.category,
        subCategories: [],
      ),
      const CategoryModel(
        id: 'cat_veggies',
        name: 'Vegetables',
        image:
            'https://images.unsplash.com/photo-1540420773420-3366772f4999?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 2,
        isFeatured: true,
        isActive: true,
        level: CategoryLevel.category,
        subCategories: [],
      ),
      const CategoryModel(
        id: 'cat_dairy',
        name: 'Dairy',
        image:
            'https://images.unsplash.com/photo-1550583724-125581cc255b?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 3,
        isFeatured: true,
        isActive: true,
        level: CategoryLevel.category,
        subCategories: [],
      ),
      const CategoryModel(
        id: 'cat_atta',
        name: 'Atta & Dal',
        image:
            'https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 4,
        isFeatured: true,
        isActive: true,
        level: CategoryLevel.category,
        subCategories: [],
      ),
    ];
  }

  Future<List<ShopModel>> getPopularShops({String? zoneId}) async {
    // Simulate zone filtering
    if (zoneId == 'zone_khetri') {
      return [
        const ShopModel(
          id: 's1',
          name: 'Khetri Fresh Mart',
          category: 'Grocery',
          rating: 4.8,
          deliveryTime: '10 min',
          imageUrl:
              'https://img.freepik.com/free-photo/view-cow-farm_23-2149526438.jpg',
          distance: '0.8 km',
          minOrder: '₹50',
          totalReviews: 120,
          storeTiming: '8 AM - 8 PM',
          address: 'Main Bazar, Khetri',
        ),
      ];
    }

    return [
      const ShopModel(
        id: '1',
        name: 'Yadav Dairy Farm',
        category: 'Dairy & Eggs',
        rating: 4.8,
        deliveryTime: '12 min',
        imageUrl:
            'https://img.freepik.com/free-photo/view-cow-farm_23-2149526438.jpg',
        distance: '1.2 km',
        minOrder: '₹50',
        totalReviews: 450,
        storeTiming: '7 AM - 9 PM',
        address: 'Main Chowk, Village Rampur',
      ),
    ];
  }

  Future<List<ProductModel>> getFeaturedProducts({String? zoneId}) async {
    return _dummyProducts;
  }

  Future<List<DealModel>> getTodayDeals({String? zoneId}) async {
    return [
      DealModel(id: 'd1', title: 'Flash Deal', product: _dummyProducts[0]),
    ];
  }

  Future<List<ProductModel>> getBestSellers({String? zoneId}) async {
    return _dummyProducts;
  }

  Future<List<ProductModel>> getNewArrivals({String? zoneId}) async {
    return _dummyProducts;
  }

  Future<List<ProductModel>> getSeasonalCollection({String? zoneId}) async {
    return _dummyProducts;
  }

  final List<ProductModel> _dummyProducts = [
    const ProductModel(
      id: '1',
      name: 'Fresh Cow Milk (A2)',
      imageUrl:
          'https://img.freepik.com/free-photo/glass-milk-bottle-table_23-2148118029.jpg',
      category: 'Milk & Dairy',
      packaging: PackagingInfo(weight: 500, unit: 'ml'),
      manufacturing: ManufacturingInfo(
          manufacturer: 'Yadav Dairy',
          packedBy: 'Yadav Dairy',
          countryOfOrigin: 'India'),
      pricing: PricingInfo(mrp: 32, sellingPrice: 28, discountPercentage: 12),
      inventory:
          InventoryInfo(stockStatus: StockStatus.inStock, isBestseller: true),
      delivery: DeliveryInfo(deliveryEta: '10 MINS'),
      rating: 4.8,
      totalReviews: 124,
    ),
    const ProductModel(
      id: '2',
      name: 'Organic Wheat Atta',
      imageUrl:
          'https://img.freepik.com/free-photo/wheat-flour-bowl-wheat-ears_23-2148866155.jpg',
      category: 'Atta & Dal',
      packaging: PackagingInfo(weight: 5, unit: 'kg'),
      manufacturing: ManufacturingInfo(
          manufacturer: 'Village Fresh',
          packedBy: 'Village Fresh',
          countryOfOrigin: 'India'),
      pricing: PricingInfo(mrp: 210, sellingPrice: 180, discountPercentage: 14),
      inventory:
          InventoryInfo(stockStatus: StockStatus.inStock, isNewArrival: true),
      healthLabels: HealthLabels(isOrganic: true),
      delivery: DeliveryInfo(deliveryEta: '15 MINS'),
      rating: 4.8,
      totalReviews: 89,
    ),
  ];
}
