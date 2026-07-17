import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/product_repository.dart';
import '../data/repositories/product_repository_impl.dart';
import 'product_catalog_state.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepositoryImpl();
});

class ProductCatalogNotifier extends StateNotifier<ProductCatalogState> {
  final ProductRepository _repository;
  final String shopId;

  ProductCatalogNotifier(this._repository, this.shopId)
      : super(const ProductCatalogState()) {
    _init();
  }

  Future<void> _init() async {
    state = state.copyWith(isLoading: true);
    try {
      final categories = await _repository.getProductCategories(shopId);
      final brands = await _repository.getProductBrands(shopId);
      final products = await _repository.getProducts(shopId: shopId);

      state = state.copyWith(
        isLoading: false,
        categories: categories,
        brands: brands,
        products: products,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> updateCategory(String category) async {
    state = state.copyWith(selectedCategory: category, isLoading: true);
    final products =
        await _repository.getProducts(shopId: shopId, categoryId: category);
    state = state.copyWith(isLoading: false, products: products);
  }

  void updateSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
    _performSearch();
  }

  Future<void> _performSearch() async {
    final products = await _repository.getProducts(
      shopId: shopId,
      categoryId: state.selectedCategory,
      searchQuery: state.searchQuery,
    );
    state = state.copyWith(products: products);
  }

  void toggleViewMode() {
    state = state.copyWith(isGridView: !state.isGridView);
  }

  Future<void> refresh() => _init();
}

final productCatalogProvider = StateNotifierProvider.family<
    ProductCatalogNotifier, ProductCatalogState, String>((ref, shopId) {
  return ProductCatalogNotifier(ref.watch(productRepositoryProvider), shopId);
});
