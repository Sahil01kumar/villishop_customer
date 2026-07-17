import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/data/models/product_model.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required ProductModel product,
    @Default(1) int quantity,
    @Default(false) bool isSavedForLater,
    @Default(false) bool isSelected,
    required DateTime addedAt,

    // Revenue Architecture Ready
    @Default(0.0) double shopCommissionAmount,
    @Default(0.0) double platformCommissionAmount,
    @Default(0.0) double taxAmount,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
