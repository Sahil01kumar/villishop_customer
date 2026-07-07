import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_rule_model.freezed.dart';
part 'offer_rule_model.g.dart';

@freezed
class OfferRuleModel with _$OfferRuleModel {
  const factory OfferRuleModel({
    @Default([]) List<String> eligibleShopIds,
    @Default([]) List<String> eligibleCategoryIds,
    @Default([]) List<String> eligibleProductIds,
    @Default([]) List<String> excludedProductIds,
    @Default(0.0) double minOrderValue,
    @Default(double.infinity) double maxDiscountAmount,
    @Default(1) int usageLimitPerUser,
    @Default(10000) int totalUsageLimit,
    @Default(false) bool isFirstOrderOnly,
    @Default(false) bool isMembershipOnly,
    DateTime? startTime,
    DateTime? endTime,
  }) = _OfferRuleModel;

  factory OfferRuleModel.fromJson(Map<String, dynamic> json) => _$OfferRuleModelFromJson(json);
}
