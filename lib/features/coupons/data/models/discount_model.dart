import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

enum DiscountType { flat, percentage, bogo, buyXGetY, combo, freeDelivery }

@freezed
class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
    required DiscountType type,
    required double value,
    @Default(0) int buyQuantity,
    @Default(0) int getQuantity,
    @Default([]) List<String> comboProductIds,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}
