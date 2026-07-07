import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/multi_shop_cart_model.dart';

part 'multi_shop_cart_state.freezed.dart';

@freezed
class MultiShopCartState with _$MultiShopCartState {
  const factory MultiShopCartState({
    @Default(false) bool isLoading,
    @Default(MultiShopCartModel()) MultiShopCartModel cart,
    String? errorMessage,
  }) = _MultiShopCartState;
}
