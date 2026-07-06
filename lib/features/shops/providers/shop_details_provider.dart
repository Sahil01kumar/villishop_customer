import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/shop_repository.dart';
import 'shop_provider.dart';
import 'shop_details_state.dart';

class ShopDetailsNotifier extends StateNotifier<ShopDetailsState> {
  final ShopRepository _repository;
  final String shopId;

  ShopDetailsNotifier(this._repository, this.shopId) : super(const ShopDetailsState()) {
    fetchShopDetails();
  }

  Future<void> fetchShopDetails() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final shop = await _repository.getShopDetails(shopId);
      final products = await _repository.getShopProducts(shopId);
      state = state.copyWith(
        isLoading: false,
        shop: shop,
        products: products,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void updateCategory(String category) {
    state = state.copyWith(selectedCategory: category);
  }
}

final shopDetailsProvider = StateNotifierProvider.family<ShopDetailsNotifier, ShopDetailsState, String>((ref, shopId) {
  return ShopDetailsNotifier(ref.watch(shopRepositoryProvider), shopId);
});
