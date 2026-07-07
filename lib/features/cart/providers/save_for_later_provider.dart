import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/cart/domain/repositories/save_for_later_repository.dart';
import 'package:villishop_customer/features/cart/data/repositories/save_for_later_repository_impl.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'save_for_later_state.dart';
import 'cart_provider.dart';

final saveForLaterRepositoryProvider = Provider<SaveForLaterRepository>((ref) {
  return SaveForLaterRepositoryImpl();
});

class SaveForLaterNotifier extends StateNotifier<SaveForLaterState> {
  final SaveForLaterRepository _repository;
  final Ref _ref;

  SaveForLaterNotifier(this._repository, this._ref) : super(const SaveForLaterState()) {
    loadSavedItems();
  }

  Future<void> loadSavedItems() async {
    state = state.copyWith(isLoading: true);
    try {
      final items = await _repository.getSavedItems();
      state = state.copyWith(isLoading: false, items: items);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> saveForLater(ProductModel product) async {
    await _repository.saveForLater(product);
    await loadSavedItems();
  }

  Future<void> moveToCart(ProductModel product) async {
    await _repository.moveToCart(product.id);
    await _ref.read(cartProvider.notifier).addToCart(product);
    await loadSavedItems();
  }

  Future<void> removeFromSaved(String productId) async {
    await _repository.removeFromSaved(productId);
    await loadSavedItems();
  }
}

final saveForLaterProvider = StateNotifierProvider<SaveForLaterNotifier, SaveForLaterState>((ref) {
  return SaveForLaterNotifier(ref.watch(saveForLaterRepositoryProvider), ref);
});
