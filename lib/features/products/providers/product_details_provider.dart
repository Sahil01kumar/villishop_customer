import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/product_repository.dart';
import 'product_catalog_provider.dart';
import 'product_details_state.dart';

class ProductDetailsNotifier extends StateNotifier<ProductDetailsState> {
  final ProductRepository _repository;
  final String productId;

  ProductDetailsNotifier(this._repository, this.productId)
      : super(const ProductDetailsState()) {
    fetchProductDetails();
  }

  Future<void> fetchProductDetails() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final product = await _repository.getProductDetails(productId);
      if (product != null) {
        final related = await _repository.getRelatedProducts(productId);
        state = state.copyWith(
            isLoading: false,
            product: product.copyWith(relatedProducts: related));
      } else {
        state =
            state.copyWith(isLoading: false, errorMessage: 'Product not found');
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void updateImageIndex(int index) {
    state = state.copyWith(selectedImageIndex: index);
  }

  Future<void> refresh() => fetchProductDetails();
}

final productDetailsProvider = StateNotifierProvider.family<
    ProductDetailsNotifier, ProductDetailsState, String>((ref, productId) {
  return ProductDetailsNotifier(
      ref.watch(productRepositoryProvider), productId);
});
