import '../../domain/repositories/search_repository.dart';
import '../../../home/data/models/product_model.dart';
import '../../../home/data/models/shop_model.dart';
import '../../../../core/services/shared_pref_service.dart';
import '../../../products/data/models/sub_models/packaging_info.dart';
import '../../../products/data/models/sub_models/manufacturing_info.dart';
import '../../../products/data/models/sub_models/pricing_info.dart';
import '../../../products/data/models/sub_models/delivery_info.dart';
import '../../../products/data/models/sub_models/inventory_info.dart';
import '../../../products/data/models/sub_models/health_labels.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SharedPreferenceService _prefs;
  static const String _historyKey = 'search_history';

  SearchRepositoryImpl(this._prefs);

  @override
  Future<List<String>> getRecentSearches() async {
    final history = _prefs.getString(_historyKey);
    if (history == null || history.isEmpty) return [];
    return history.split(',').take(5).toList();
  }

  @override
  Future<List<String>> getTrendingSearches() async {
    return ['Milk', 'Bread', 'Fresh Ghee', 'Organic Atta', 'Onion', 'Potato'];
  }

  @override
  Future<void> saveSearch(String query) async {
    if (query.trim().isEmpty) return;
    final history = await getRecentSearches();
    if (history.contains(query)) {
      history.remove(query);
    }
    history.insert(0, query);
    await _prefs.setString(_historyKey, history.take(10).join(','));
  }

  @override
  Future<void> clearHistory() async {
    await _prefs.remove(_historyKey);
  }

  @override
  Future<List<ProductModel>> searchProducts(String query) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (query.isEmpty) return [];

    return _dummyProducts
        .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Future<List<ShopModel>> searchShops(String query) async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (query.isEmpty) return [];

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
      ),
    ].where((s) => s.name.toLowerCase().contains(query.toLowerCase())).toList();
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
      delivery: DeliveryInfo(deliveryEta: '10 MINS'),
      inventory: InventoryInfo(stockStatus: StockStatus.inStock),
      rating: 4.5,
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
      healthLabels: HealthLabels(isOrganic: true),
      delivery: DeliveryInfo(deliveryEta: '15 MINS'),
      inventory: InventoryInfo(stockStatus: StockStatus.inStock),
      rating: 4.8,
    ),
  ];
}
