import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../home/data/models/category_model.dart';
import '../../home/data/models/product_model.dart';
import '../data/repositories/category_repository_impl.dart';
import '../domain/repositories/category_repository.dart';
import '../../products/domain/repositories/product_repository.dart';
import '../../products/data/repositories/product_repository_impl.dart';
import '../../shops/providers/current_shop_provider.dart';

part 'category_provider.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(false) bool isLoading,
    @Default([]) List<CategoryModel> parentCategories,
    CategoryModel? selectedParent,
    CategoryModel? selectedSub,
    @Default([]) List<ProductModel> products,
    String? errorMessage,
    String? selectedShopId,
  }) = _CategoryState;
}

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepositoryImpl();
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepositoryImpl();
});

final pendingCategoryIdProvider = StateProvider<String?>((ref) => null);

class CategoryNotifier extends StateNotifier<CategoryState> {
  final CategoryRepository _categoryRepository;
  final ProductRepository _productRepository;
  final Ref _ref;

  CategoryNotifier(this._categoryRepository, this._productRepository, this._ref)
      : super(const CategoryState()) {
    // Listen for shop changes
    _ref.listen<String?>(currentShopIdProvider, (previous, next) {
      if (previous != next) {
        init(shopId: next);
      }
    });

    // Listen for category selection requests from Home
    _ref.listen<String?>(pendingCategoryIdProvider, (previous, next) {
      if (next != null) {
        selectCategoryById(next);
      }
    });

    final currentShopId = _ref.read(currentShopIdProvider);
    init(shopId: currentShopId);
  }

  Future<void> init({String? shopId}) async {
    state =
        state.copyWith(isLoading: true, selectedShopId: shopId, products: []);
    try {
      final categories = shopId != null
          ? await _categoryRepository.getShopCategories(shopId)
          : await _categoryRepository.getCategories();

      // Filter out empty categories for the shop if needed
      final visibleCategories =
          categories.where((c) => c.isVisible && c.isActive).toList();

      state = state.copyWith(
        isLoading: false,
        parentCategories: visibleCategories,
        selectedParent:
            visibleCategories.isNotEmpty ? visibleCategories.first : null,
        selectedSub: (visibleCategories.isNotEmpty &&
                visibleCategories.first.subCategories.isNotEmpty)
            ? visibleCategories.first.subCategories.first
            : null,
      );

      if (state.selectedSub != null) {
        await fetchProducts(state.selectedSub!.id);
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> selectCategoryById(String categoryId) async {
    if (state.parentCategories.isEmpty) {
      await init(shopId: state.selectedShopId);
    }

    for (var parent in state.parentCategories) {
      if (parent.id == categoryId) {
        selectParent(parent);
        return;
      }
      for (var sub in parent.subCategories) {
        if (sub.id == categoryId) {
          state = state.copyWith(
            selectedParent: parent,
            selectedSub: sub,
            products: [],
          );
          await fetchProducts(sub.id);
          return;
        }
      }
    }
  }

  void selectParent(CategoryModel parent) {
    if (state.selectedParent?.id == parent.id) return;

    final sub =
        parent.subCategories.isNotEmpty ? parent.subCategories.first : null;
    state = state.copyWith(
      selectedParent: parent,
      selectedSub: sub,
      products: [],
    );

    if (sub != null) {
      fetchProducts(sub.id);
    }
  }

  void selectSub(CategoryModel sub) {
    if (state.selectedSub?.id == sub.id) return;
    state = state.copyWith(selectedSub: sub, products: []);
    fetchProducts(sub.id);
  }

  Future<void> fetchProducts(String categoryId) async {
    state = state.copyWith(isLoading: true);
    try {
      final products = await _productRepository.getProducts(
        categoryId: categoryId,
        shopId: state.selectedShopId,
      );
      state = state.copyWith(isLoading: false, products: products);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }
}

final categoryProvider =
    StateNotifierProvider<CategoryNotifier, CategoryState>((ref) {
  return CategoryNotifier(
    ref.watch(categoryRepositoryProvider),
    ref.watch(productRepositoryProvider),
    ref,
  );
});
