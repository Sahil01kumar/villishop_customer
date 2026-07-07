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
      discount:
          DiscountModel.fromJson(json['discount'] as Map<String, dynamic>),
      rules: OfferRuleModel.fromJson(json['rules'] as Map<String, dynamic>),
      cashback: json['cashback'] == null
          ? null
          : CashbackModel.fromJson(json['cashback'] as Map<String, dynamic>),
      payer: $enumDecodeNullable(_$DiscountPayerEnumMap, json['payer']) ??
          DiscountPayer.shop,
      platformShareRatio:
          (json['platformShareRatio'] as num?)?.toDouble() ?? 0.5,
      isCommissionBeforeDiscount:
          json['isCommissionBeforeDiscount'] as bool? ?? true,
      isActive: json['isActive'] as bool? ?? false,
      bannerUrl: json['bannerUrl'] as String?,
    );

Map<String, dynamic> _$$CouponModelImplToJson(_$CouponModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'description': instance.description,
      'discount': instance.discount,
      'rules': instance.rules,
      'cashback': instance.cashback,
      'payer': _$DiscountPayerEnumMap[instance.payer]!,
      'platformShareRatio': instance.platformShareRatio,
      'isCommissionBeforeDiscount': instance.isCommissionBeforeDiscount,
      'isActive': instance.isActive,
      'bannerUrl': instance.bannerUrl,
    };

const _$DiscountPayerEnumMap = {
  DiscountPayer.platform: 'platform',
  DiscountPayer.shop: 'shop',
  DiscountPayer.shared: 'shared',
};
