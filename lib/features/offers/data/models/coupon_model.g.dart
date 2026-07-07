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
      discountValue: (json['discountValue'] as num).toDouble(),
      isPercentage: json['isPercentage'] as bool? ?? false,
      minOrderValue: (json['minOrderValue'] as num).toDouble(),
      maxDiscountAmount: (json['maxDiscountAmount'] as num?)?.toDouble(),
      expiryDate: DateTime.parse(json['expiryDate'] as String),
      usageLimitPerUser: (json['usageLimitPerUser'] as num?)?.toInt() ?? 1,
      currentUsageCount: (json['currentUsageCount'] as num?)?.toInt() ?? 0,
      isSaved: json['isSaved'] as bool? ?? false,
      terms:
          (json['terms'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      shopId: json['shopId'] as String?,
    );

Map<String, dynamic> _$$CouponModelImplToJson(_$CouponModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'description': instance.description,
      'discountValue': instance.discountValue,
      'isPercentage': instance.isPercentage,
      'minOrderValue': instance.minOrderValue,
      'maxDiscountAmount': instance.maxDiscountAmount,
      'expiryDate': instance.expiryDate.toIso8601String(),
      'usageLimitPerUser': instance.usageLimitPerUser,
      'currentUsageCount': instance.currentUsageCount,
      'isSaved': instance.isSaved,
      'terms': instance.terms,
      'shopId': instance.shopId,
    };
