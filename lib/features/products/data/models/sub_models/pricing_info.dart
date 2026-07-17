import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_info.freezed.dart';
part 'pricing_info.g.dart';

@freezed
class PricingInfo with _$PricingInfo {
  const factory PricingInfo({
    required double mrp,
    required double sellingPrice,
    @Default(0.0) double discountAmount,
    @Default(0) int discountPercentage,
    @Default(0.0) double cashbackAmount,
    @Default(0.0) double walletCashback,
    @Default(false) bool hasComboOffer,
    @Default(false) bool isBogo,
    @Default(false) bool isDynamicPricingEnabled,
  }) = _PricingInfo;

  factory PricingInfo.fromJson(Map<String, dynamic> json) =>
      _$PricingInfoFromJson(json);
}
