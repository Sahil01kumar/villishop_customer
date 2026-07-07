// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PricingInfoImpl _$$PricingInfoImplFromJson(Map<String, dynamic> json) =>
    _$PricingInfoImpl(
      mrp: (json['mrp'] as num).toDouble(),
      sellingPrice: (json['sellingPrice'] as num).toDouble(),
      discountAmount: (json['discountAmount'] as num?)?.toDouble() ?? 0.0,
      discountPercentage: (json['discountPercentage'] as num?)?.toInt() ?? 0,
      cashbackAmount: (json['cashbackAmount'] as num?)?.toDouble() ?? 0.0,
      walletCashback: (json['walletCashback'] as num?)?.toDouble() ?? 0.0,
      hasComboOffer: json['hasComboOffer'] as bool? ?? false,
      isBogo: json['isBogo'] as bool? ?? false,
      isDynamicPricingEnabled:
          json['isDynamicPricingEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$PricingInfoImplToJson(_$PricingInfoImpl instance) =>
    <String, dynamic>{
      'mrp': instance.mrp,
      'sellingPrice': instance.sellingPrice,
      'discountAmount': instance.discountAmount,
      'discountPercentage': instance.discountPercentage,
      'cashbackAmount': instance.cashbackAmount,
      'walletCashback': instance.walletCashback,
      'hasComboOffer': instance.hasComboOffer,
      'isBogo': instance.isBogo,
      'isDynamicPricingEnabled': instance.isDynamicPricingEnabled,
    };
