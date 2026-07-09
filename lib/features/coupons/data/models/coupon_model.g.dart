// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponModelImpl _$$CouponModelImplFromJson(Map<String, dynamic> json) =>
    _$CouponModelImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$CouponTypeEnumMap, json['type']),
      source: $enumDecode(_$CouponSourceEnumMap, json['source']),
      value: (json['value'] as num?)?.toDouble() ?? 0.0,
      minOrderValue: (json['minOrderValue'] as num?)?.toDouble() ?? 0.0,
      maxDiscountAmount:
          (json['maxDiscountAmount'] as num?)?.toDouble() ?? double.infinity,
      expiryDate: DateTime.parse(json['expiryDate'] as String),
      usageLimitPerCustomer:
          (json['usageLimitPerCustomer'] as num?)?.toInt() ?? 1,
      isActive: json['isActive'] as bool? ?? true,
      shopId: json['shopId'] as String?,
      eligibleCategoryIds: (json['eligibleCategoryIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      eligibleProductIds: (json['eligibleProductIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isFirstOrderOnly: json['isFirstOrderOnly'] as bool? ?? false,
      isMembershipOnly: json['isMembershipOnly'] as bool? ?? false,
    );

Map<String, dynamic> _$$CouponModelImplToJson(_$CouponModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'description': instance.description,
      'type': _$CouponTypeEnumMap[instance.type]!,
      'source': _$CouponSourceEnumMap[instance.source]!,
      'value': instance.value,
      'minOrderValue': instance.minOrderValue,
      'maxDiscountAmount': instance.maxDiscountAmount,
      'expiryDate': instance.expiryDate.toIso8601String(),
      'usageLimitPerCustomer': instance.usageLimitPerCustomer,
      'isActive': instance.isActive,
      'shopId': instance.shopId,
      'eligibleCategoryIds': instance.eligibleCategoryIds,
      'eligibleProductIds': instance.eligibleProductIds,
      'isFirstOrderOnly': instance.isFirstOrderOnly,
      'isMembershipOnly': instance.isMembershipOnly,
    };

const _$CouponTypeEnumMap = {
  CouponType.flat: 'flat',
  CouponType.percentage: 'percentage',
  CouponType.freeDelivery: 'freeDelivery',
  CouponType.bogo: 'bogo',
  CouponType.buyXGetY: 'buyXGetY',
  CouponType.cashback: 'cashback',
};

const _$CouponSourceEnumMap = {
  CouponSource.platform: 'platform',
  CouponSource.shop: 'shop',
  CouponSource.brand: 'brand',
  CouponSource.referral: 'referral',
  CouponSource.festival: 'festival',
};
