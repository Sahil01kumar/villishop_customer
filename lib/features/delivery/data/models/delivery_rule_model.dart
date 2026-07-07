import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_rule_model.freezed.dart';
part 'delivery_rule_model.g.dart';

@freezed
class DeliveryRuleModel with _$DeliveryRuleModel {
  const factory DeliveryRuleModel({
    @Default(false) bool isFirstOrderFree,
    @Default(false) bool isMembershipFree,
    @Default(0.0) double freeDeliveryMinOrder,
    @Default([]) List<String> freeDeliveryShopIds,
    @Default([]) List<String> freeDeliveryCouponCodes,
  }) = _DeliveryRuleModel;

  factory DeliveryRuleModel.fromJson(Map<String, dynamic> json) => _$DeliveryRuleModelFromJson(json);
}
