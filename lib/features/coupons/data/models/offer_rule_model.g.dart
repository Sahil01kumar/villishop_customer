// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_rule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferRuleModelImpl _$$OfferRuleModelImplFromJson(Map<String, dynamic> json) =>
    _$OfferRuleModelImpl(
      eligibleShopIds: (json['eligibleShopIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      eligibleCategoryIds: (json['eligibleCategoryIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      eligibleProductIds: (json['eligibleProductIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      excludedProductIds: (json['excludedProductIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      minOrderValue: (json['minOrderValue'] as num?)?.toDouble() ?? 0.0,
      maxDiscountAmount:
          (json['maxDiscountAmount'] as num?)?.toDouble() ?? double.infinity,
      usageLimitPerUser: (json['usageLimitPerUser'] as num?)?.toInt() ?? 1,
      totalUsageLimit: (json['totalUsageLimit'] as num?)?.toInt() ?? 10000,
      isFirstOrderOnly: json['isFirstOrderOnly'] as bool? ?? false,
      isMembershipOnly: json['isMembershipOnly'] as bool? ?? false,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$$OfferRuleModelImplToJson(
        _$OfferRuleModelImpl instance) =>
    <String, dynamic>{
      'eligibleShopIds': instance.eligibleShopIds,
      'eligibleCategoryIds': instance.eligibleCategoryIds,
      'eligibleProductIds': instance.eligibleProductIds,
      'excludedProductIds': instance.excludedProductIds,
      'minOrderValue': instance.minOrderValue,
      'maxDiscountAmount': instance.maxDiscountAmount,
      'usageLimitPerUser': instance.usageLimitPerUser,
      'totalUsageLimit': instance.totalUsageLimit,
      'isFirstOrderOnly': instance.isFirstOrderOnly,
      'isMembershipOnly': instance.isMembershipOnly,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
    };
