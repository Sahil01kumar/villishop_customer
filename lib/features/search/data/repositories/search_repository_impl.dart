import '../../domain/repositories/search_repository.dart';
import '../../../home/data/models/product_model.dart';
import '../../../home/data/models/shop_model.dart';
import '../../../../core/services/shared_pref_service.dart';

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
    
    return [
      const ProductModel(
        id: '1',
        name: 'Fresh Cow Milk',
        price: 28,
        originalPrice: 32,
        weight: '500 ml',
        imageUrl: '',
        discountPercentage: 12,
        rating: 4.5,
      ),
      const ProductModel(
        id: '2',
        name: 'Organic Wheat Atta',
        price: 180,
        originalPrice: 210,
        weight: '5 kg',
        imageUrl: '',
        discountPercentage: 14,
        rating: 4.8,
      ),
    ].where((p) => p.name.toLowerCase().contains(query.toLowerCase())).toList();
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
        imageUrl: '',
        distance: '1.2 km',
        minOrder: '₹50',
      ),
    ].where((s) => s.name.toLowerCase().contains(query.toLowerCase())).toList();
  }
}
