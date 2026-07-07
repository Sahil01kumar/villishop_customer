import '../../domain/repositories/product_repository.dart';
import '../../../home/data/models/product_model.dart';
import '../models/sub_models/packaging_info.dart';
import '../models/sub_models/manufacturing_info.dart';
import '../models/sub_models/pricing_info.dart';
import '../models/sub_models/inventory_info.dart';
import '../models/sub_models/delivery_info.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<ProductModel>> getProducts({
    String? shopId,
    String? categoryId,
    String? searchQuery,
    String? sortBy,
    Map<String, dynamic>? filters,
  }) async {
    await Future.delayed(const Duration(milliseconds: 600));
    return _dummyProducts;
  }

  @override
  Future<ProductModel?> getProductDetails(String productId) async {
    await Future.delayed(const Duration(milliseconds: 800));
    try {
      return _dummyProducts.firstWhere((p) => p.id == productId);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<List<String>> getProductCategories(String shopId) async {
    return ['All', 'Milk & Dairy', 'Vegetables', 'Fruits', 'Atta & Dal', 'Snacks'];
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
      id: 'p1',
      name: 'Fresh Cow Milk (A2)',
      imageUrl: '',
      category: 'Milk & Dairy',
      brand: 'Yadav Dairy Farm',
      packaging: PackagingInfo(weight: 500, unit: 'ml', packSize: 'Single'),
      manufacturing: ManufacturingInfo(
        manufacturer: 'Yadav Farms',
        packedBy: 'Yadav Dairy',
        countryOfOrigin: 'India',
        fssaiNumber: '12345678901234',
        shelfLife: '2 Days',
      ),
      pricing: PricingInfo(mrp: 32, sellingPrice: 28, discountPercentage: 12),
      inventory: InventoryInfo(stockStatus: StockStatus.inStock, availableQuantity: 50, isBestseller: true),
      delivery: DeliveryInfo(deliveryEta: '10 min', isFreeDelivery: true),
      shopId: 's1',
      shopName: 'Yadav Dairy Farm',
      description: 'Pure and fresh A2 cow milk.',
    ),
    const ProductModel(
      id: 'p2',
      name: 'Organic Wheat Atta',
      imageUrl: '',
      category: 'Atta & Dal',
      brand: 'Village Fresh',
      packaging: PackagingInfo(weight: 5, unit: 'kg'),
      manufacturing: ManufacturingInfo(
        manufacturer: 'Village Mills',
        packedBy: 'Village Fresh',
        countryOfOrigin: 'India',
      ),
      pricing: PricingInfo(mrp: 210, sellingPrice: 180, discountPercentage: 14),
      inventory: InventoryInfo(stockStatus: StockStatus.lowStock, availableQuantity: 5, isNewArrival: true),
      shopId: 's2',
      shopName: 'Village Veg Mart',
    ),
  ];
}
