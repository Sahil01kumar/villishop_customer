import 'package:freezed_annotation/freezed_annotation.dart';
import '../../home/data/models/product_model.dart';

part 'product_catalog_state.freezed.dart';

@freezed
class ProductCatalogState with _$ProductCatalogState {
  const factory ProductCatalogState({
    @Default(true) bool isLoading,
    @Default([]) List<ProductModel> products,
    @Default([]) List<String> categories,
    @Default([]) List<String> brands,
    String? errorMessage,
    @Default('All') String selectedCategory,
    @Default('') String searchQuery,
    @Default('Popularity') String sortBy,
    @Default(false) bool isGridView,
  }) = _ProductCatalogState;
}
