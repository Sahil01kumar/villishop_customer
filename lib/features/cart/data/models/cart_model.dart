import 'package:freezed_annotation/freezed_annotation.dart';
import 'shop_cart_model.dart';
import 'cart_summary_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @Default([]) List<ShopCartModel> shopCarts,
    @Default(CartSummaryModel()) CartSummaryModel overallSummary,
    String? appliedCouponCode,
    @Default(false) bool isSyncing,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
