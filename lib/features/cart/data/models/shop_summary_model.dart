import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_summary_model.freezed.dart';
part 'shop_summary_model.g.dart';

@freezed
class ShopSummaryModel with _$ShopSummaryModel {
  const factory ShopSummaryModel({
    @Default(0.0) double subTotal,
    @Default(0.0) double totalDiscount,
    @Default(0.0) double deliveryCharge,
    @Default(0.0) double packagingCharge,
    @Default(0.0) double taxAmount,
    @Default(0.0) double grandTotal,

    // Revenue Architecture Ready (Per Shop)
    @Default(0.0) double platformCommission,
    @Default(0.0) double shopEarnings,
    @Default(0.0) double deliveryPartnerEarnings,
    @Default(0.0) double couponCostSharing,
    @Default(0.0) double serviceFee,
  }) = _ShopSummaryModel;

  factory ShopSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ShopSummaryModelFromJson(json);
}
