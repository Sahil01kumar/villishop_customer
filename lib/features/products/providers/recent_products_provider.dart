import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../home/data/models/product_model.dart';
import '../../../core/persistence/persistence_keys.dart';
import '../../../core/persistence/providers/persistence_providers.dart';

class RecentProductsNotifier extends StateNotifier<List<ProductModel>> {
  final Ref _ref;

  RecentProductsNotifier(this._ref) : super([]) {
    _load();
  }

  void _load() {
    final saved = _ref
        .read(localStorageProvider)
        .get<List<dynamic>>(PersistenceKeys.recentProducts);
    if (saved != null) {
      try {
        state = saved.map((e) => ProductModel.fromJson(e)).toList();
      } catch (_) {}
    }
  }

  void addProduct(ProductModel product) {
    final List<ProductModel> updated = List.from(state);
    updated.removeWhere((p) => p.id == product.id);
    updated.insert(0, product);
    if (updated.length > 10) updated.removeLast();

    state = updated;
    _ref.read(localStorageProvider).save(
          PersistenceKeys.recentProducts,
          updated.map((p) => p.toJson()).toList(),
        );
  }
}

final recentProductsProvider =
    StateNotifierProvider<RecentProductsNotifier, List<ProductModel>>((ref) {
  return RecentProductsNotifier(ref);
});
