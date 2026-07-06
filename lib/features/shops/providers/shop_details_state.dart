import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/shop_model.dart';
import '../../home/data/models/product_model.dart';

part 'shop_details_state.freezed.dart';

@freezed
class ShopDetailsState with _$ShopDetailsState {
  const factory ShopDetailsState({
    @Default(true) bool isLoading,
    ShopModel? shop,
    @Default([]) List<ProductModel> products,
    String? errorMessage,
    @Default('All') String selectedCategory,
  }) = _ShopDetailsState;
}
