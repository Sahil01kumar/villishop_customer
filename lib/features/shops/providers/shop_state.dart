import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/shop_model.dart';

part 'shop_state.freezed.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    @Default(false) bool isLoading,
    @Default([]) List<ShopModel> nearbyShops,
    @Default([]) List<ShopModel> filteredShops,
    String? errorMessage,
    @Default(false) bool isGridView,
  }) = _ShopState;
}
