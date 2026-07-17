import '../../domain/repositories/save_for_later_repository.dart';
import '../models/save_for_later_model.dart';
import '../../../home/data/models/product_model.dart';

class SaveForLaterRepositoryImpl implements SaveForLaterRepository {
  final List<SaveForLaterModel> _savedItems = [];
  final List<ProductModel> _recentlyRemoved = [];

  @override
  Future<List<SaveForLaterModel>> getSavedItems() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _savedItems;
  }

  @override
  Future<void> saveForLater(ProductModel product) async {
    _savedItems.add(SaveForLaterModel(
      id: product.id,
      product: product,
      savedAt: DateTime.now(),
    ));
  }

  @override
  Future<void> moveToCart(String productId) async {
    _savedItems.removeWhere((item) => item.product.id == productId);
  }

  @override
  Future<void> removeFromSaved(String productId) async {
    final index =
        _savedItems.indexWhere((item) => item.product.id == productId);
    if (index != -1) {
      _recentlyRemoved.add(_savedItems[index].product);
      _savedItems.removeAt(index);
    }
  }

  @override
  Future<void> clearAllSaved() async {
    _savedItems.clear();
  }

  @override
  Future<List<ProductModel>> getRecentlyRemoved() async {
    return _recentlyRemoved;
  }
}
