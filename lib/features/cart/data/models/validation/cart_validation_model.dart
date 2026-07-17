import 'package:freezed_annotation/freezed_annotation.dart';
import 'validation_result_model.dart';

part 'cart_validation_model.freezed.dart';
part 'cart_validation_model.g.dart';

@freezed
class CartValidationModel with _$CartValidationModel {
  const factory CartValidationModel({
    required String cartId,
    @Default([]) List<ValidationResultModel> results,
    @Default(true) bool isCheckoutAllowed,
    required DateTime validatedAt,
    @Default(0) int errorCount,
    @Default(0) int warningCount,
  }) = _CartValidationModel;

  factory CartValidationModel.fromJson(Map<String, dynamic> json) =>
      _$CartValidationModelFromJson(json);
}
