import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:villishop_customer/features/cart/data/models/validation/cart_validation_model.dart';

part 'cart_validation_state.freezed.dart';

@freezed
class CartValidationState with _$CartValidationState {
  const factory CartValidationState({
    @Default(false) bool isValidating,
    CartValidationModel? validationResult,
    String? errorMessage,
  }) = _CartValidationState;
}
