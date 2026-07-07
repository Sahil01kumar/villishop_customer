import 'package:freezed_annotation/freezed_annotation.dart';
import '../../home/data/models/product_model.dart';

part 'product_details_state.freezed.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    @Default(true) bool isLoading,
    ProductModel? product,
    String? errorMessage,
    @Default(0) int selectedImageIndex,
  }) = _ProductDetailsState;
}
