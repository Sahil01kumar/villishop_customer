import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/repositories/shop_repository_impl.dart';
import '../domain/repositories/shop_repository.dart';
import 'shop_state.dart';

final shopRepositoryProvider = Provider<ShopRepository>((ref) {
  return ShopRepositoryImpl();
});

class ShopNotifier extends StateNotifier<ShopState> {
  final ShopRepository _repository;

  ShopNotifier(this._repository) : super(const ShopState()) {
    fetchNearbyShops();
  }

  Future<void> fetchNearbyShops() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final shops = await _repository.getNearbyShops();
      state = state.copyWith(
        isLoading: false,
        nearbyShops: shops,
        filteredShops: shops,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void toggleView() {
    state = state.copyWith(isGridView: !state.isGridView);
  }

  void filterShops(String query) {
    if (query.isEmpty) {
      state = state.copyWith(filteredShops: state.nearbyShops);
    } else {
      final filtered = state.nearbyShops
          .where((shop) => shop.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
      state = state.copyWith(filteredShops: filtered);
    }
  }
}

final shopProvider = StateNotifierProvider<ShopNotifier, ShopState>((ref) {
  return ShopNotifier(ref.watch(shopRepositoryProvider));
});
