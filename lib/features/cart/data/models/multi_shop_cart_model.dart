import 'package:freezed_annotation/freezed_annotation.dart';
import 'shop_cart_model.dart';
import 'cart_summary_model.dart';

part 'multi_shop_cart_model.freezed.dart';
part 'multi_shop_cart_model.g.dart';

@freezed
class MultiShopCartModel with _$MultiShopCartModel {
  const factory MultiShopCartModel({
    @Default([]) List<ShopCartModel> shopCarts,
    @Default(CartSummaryModel()) CartSummaryModel overallSummary,
    String? appliedCouponCode,
    @Default(false) bool isSyncing,
  }) = _MultiShopCartModel;

  factory MultiShopCartModel.fromJson(Map<String, dynamic> json) => _$MultiShopCartModelFromJson(json);
}
