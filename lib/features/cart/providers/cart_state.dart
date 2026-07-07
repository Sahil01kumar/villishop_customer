import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/cart_model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(false) bool isLoading,
    @Default(CartModel()) CartModel cart,
    String? errorMessage,
    @Default(false) bool isSyncing,
  }) = _CartState;
}
