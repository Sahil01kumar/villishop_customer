// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_rule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryRuleModelImpl _$$DeliveryRuleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryRuleModelImpl(
      isFirstOrderFree: json['isFirstOrderFree'] as bool? ?? false,
      isMembershipFree: json['isMembershipFree'] as bool? ?? false,
      freeDeliveryMinOrder:
          (json['freeDeliveryMinOrder'] as num?)?.toDouble() ?? 0.0,
      freeDeliveryShopIds: (json['freeDeliveryShopIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      freeDeliveryCouponCodes:
          (json['freeDeliveryCouponCodes'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$DeliveryRuleModelImplToJson(
        _$DeliveryRuleModelImpl instance) =>
    <String, dynamic>{
      'isFirstOrderFree': instance.isFirstOrderFree,
      'isMembershipFree': instance.isMembershipFree,
      'freeDeliveryMinOrder': instance.freeDeliveryMinOrder,
      'freeDeliveryShopIds': instance.freeDeliveryShopIds,
      'freeDeliveryCouponCodes': instance.freeDeliveryCouponCodes,
    };
