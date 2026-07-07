import 'package:freezed_annotation/freezed_annotation.dart';
import 'cart_item_model.dart';
import 'shop_summary_model.dart';

part 'shop_cart_model.freezed.dart';
part 'shop_cart_model.g.dart';

@freezed
class ShopCartModel with _$ShopCartModel {
  const factory ShopCartModel({
    required String shopId,
    required String shopName,
    String? shopLogo,
    @Default(true) bool isOpen,
    @Default(0.0) double shopRating,
    @Default('10 mins') String deliveryTime,
    @Default(0.0) double minOrderValue,
    @Default([]) List<CartItemModel> items,
    @Default(ShopSummaryModel()) ShopSummaryModel summary,
    @Default(true) bool isExpanded,
    @Default(true) bool isSelected,
  }) = _ShopCartModel;

  factory ShopCartModel.fromJson(Map<String, dynamic> json) => _$ShopCartModelFromJson(json);
}
