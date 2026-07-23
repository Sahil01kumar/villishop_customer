import '../../domain/repositories/product_repository.dart';
import '../../../home/data/models/product_model.dart';
import '../models/sub_models/packaging_info.dart';
import '../models/sub_models/manufacturing_info.dart';
import '../models/sub_models/pricing_info.dart';
import '../models/sub_models/inventory_info.dart';
import '../models/sub_models/delivery_info.dart';
import '../models/sub_models/health_labels.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<ProductModel>> getProducts({
    String? shopId,
    String? categoryId,
    String? searchQuery,
    String? sortBy,
    Map<String, dynamic>? filters,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    if (categoryId != null) {
      if (categoryId.startsWith('10')) {
        // Milk & Dairy
        return _dummyProducts
            .where((p) => p.category == 'Milk & Dairy')
            .toList();
      }
      if (categoryId.startsWith('40')) {
        // Vegetables
        return _dummyProducts.where((p) => p.category == 'Vegetables').toList();
      }
    }

    return _dummyProducts;
  }

  @override
  Future<ProductModel?> getProductDetails(String productId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return _dummyProducts.firstWhere((p) => p.id == productId);
    } catch (_) {
      // Fallback for ID mismatch between Home/Search and this repository
      return _dummyProducts.first;
    }
  }

  @override
  Future<List<String>> getProductCategories(String shopId) async {
    return [
      'All',
      'Milk & Dairy',
      'Vegetables',
      'Fruits',
      'Atta & Dal',
      'Snacks'
    ];
  }

  @override
  Future<List<String>> getProductBrands(String shopId) async {
    return ['Yadav Dairy', 'Village Fresh', 'Organic Farms'];
  }

  @override
  Future<List<ProductModel>> getRelatedProducts(String productId) async {
    return _dummyProducts.where((p) => p.id != productId).toList();
  }

  final List<ProductModel> _dummyProducts = [
    const ProductModel(
      id: '1',
      name: 'Fresh Cow Milk (A2)',
      imageUrl:
          'https://img.freepik.com/free-photo/glass-milk-bottle-table_23-2148118029.jpg',
      category: 'Milk & Dairy',
      brand: 'Yadav Dairy Farm',
      packaging: PackagingInfo(weight: 500, unit: 'ml', packSize: 'Single'),
      manufacturing: ManufacturingInfo(
        manufacturer: 'Yadav Farms',
        packedBy: 'Yadav Dairy',
        countryOfOrigin: 'India',
        shelfLife: '2 Days',
      ),
      pricing: PricingInfo(mrp: 32, sellingPrice: 28, discountPercentage: 12),
      inventory: InventoryInfo(
          stockStatus: StockStatus.inStock,
          availableQuantity: 50,
          isBestseller: true),
      delivery: DeliveryInfo(deliveryEta: '10 min', isFreeDelivery: true),
      healthLabels: HealthLabels(isVegan: false),
      rating: 4.8,
      totalReviews: 124,
      shopId: 's1',
      shopName: 'Yadav Dairy Farm',
      description:
          'Pure and fresh A2 cow milk delivered straight from our village farm. No preservatives added.',
      relatedProducts: [],
    ),
    const ProductModel(
      id: '2',
      name: 'Organic Wheat Atta',
      imageUrl:
          'https://img.freepik.com/free-photo/wheat-flour-bowl-wheat-ears_23-2148866155.jpg',
      category: 'Atta & Dal',
      brand: 'Village Fresh',
      packaging: PackagingInfo(weight: 5, unit: 'kg'),
      manufacturing: ManufacturingInfo(
        manufacturer: 'Village Mills',
        packedBy: 'Village Fresh',
        countryOfOrigin: 'India',
      ),
      pricing: PricingInfo(mrp: 210, sellingPrice: 180, discountPercentage: 14),
      inventory: InventoryInfo(
          stockStatus: StockStatus.lowStock,
          availableQuantity: 5,
          isNewArrival: true,
          isTrending: true),
      healthLabels: HealthLabels(isVegan: true),
      rating: 4.5,
      totalReviews: 89,
      shopId: 's2',
      shopName: 'Village Veg Mart',
      description:
          'Chakki fresh organic wheat atta with all the natural nutrients intact.',
      relatedProducts: [],
    ),
    const ProductModel(
      id: '3',
      name: 'Basmati Rice Premium',
      imageUrl:
          'https://img.freepik.com/free-photo/uncooked-basmati-rice-bowl_23-2148866157.jpg',
      category: 'Atta & Dal',
      brand: 'Yadav Dairy Farm',
      packaging: PackagingInfo(weight: 400, unit: 'g'),
      manufacturing: ManufacturingInfo(
        manufacturer: 'Yadav Farms',
        packedBy: 'Yadav Dairy',
        countryOfOrigin: 'India',
      ),
      pricing: PricingInfo(mrp: 500, sellingPrice: 450, discountPercentage: 10),
      inventory: InventoryInfo(
          stockStatus: StockStatus.inStock, availableQuantity: 30),
      delivery: DeliveryInfo(deliveryEta: '12 min'),
      rating: 4.7,
      totalReviews: 56,
      shopId: 's1',
      description: 'Creamy and thick curd made from fresh cow milk.',
    ),
    const ProductModel(
      id: '4',
      name: 'Farm Fresh Tomatoes',
      imageUrl:
          'https://img.freepik.com/free-photo/fresh-tomatoes-wooden-background_23-2148118025.jpg',
      category: 'Vegetables',
      packaging: PackagingInfo(weight: 500, unit: 'g'),
      manufacturing: ManufacturingInfo(
        manufacturer: 'Village Garden',
        packedBy: 'Local Village Store',
        countryOfOrigin: 'India',
      ),
      pricing: PricingInfo(mrp: 30, sellingPrice: 24, discountPercentage: 20),
      inventory: InventoryInfo(
          stockStatus: StockStatus.inStock,
          availableQuantity: 100,
          isTrending: true),
      delivery: DeliveryInfo(deliveryEta: '15 min'),
      healthLabels: HealthLabels(isVegan: true),
      rating: 4.2,
      shopId: 's2',
      description: 'Red and juicy tomatoes handpicked from the local garden.',
    ),
  ];
}
