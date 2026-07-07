import 'package:freezed_annotation/freezed_annotation.dart';
import 'offer_rule_model.dart';
import 'discount_model.dart';
import 'cashback_model.dart';

part 'coupon_model.freezed.dart';
part 'coupon_model.g.dart';

enum DiscountPayer { platform, shop, shared }

@freezed
class CouponModel with _$CouponModel {
  const factory CouponModel({
    required String id,
    required String code,
    required String title,
    required String description,
    required DiscountModel discount,
    required OfferRuleModel rules,
    CashbackModel? cashback,
    @Default(DiscountPayer.shop) DiscountPayer payer,
    @Default(0.5) double platformShareRatio, // If shared
    @Default(true) bool isCommissionBeforeDiscount,
    @Default(false) bool isActive,
    String? bannerUrl,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) => _$CouponModelFromJson(json);
}
