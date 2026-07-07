import 'package:freezed_annotation/freezed_annotation.dart';
import 'cart_item_model.dart';
import 'cart_summary_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @Default([]) List<CartItemModel> items,
    @Default(CartSummaryModel()) CartSummaryModel summary,
    String? appliedCouponCode,
    String? deliveryInstruction,
    @Default({}) Map<String, List<CartItemModel>> itemsByShop, // Multi-shop grouping
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);
}
