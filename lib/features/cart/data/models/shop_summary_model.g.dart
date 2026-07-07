// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopSummaryModelImpl _$$ShopSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopSummaryModelImpl(
      subTotal: (json['subTotal'] as num?)?.toDouble() ?? 0.0,
      totalDiscount: (json['totalDiscount'] as num?)?.toDouble() ?? 0.0,
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble() ?? 0.0,
      packagingCharge: (json['packagingCharge'] as num?)?.toDouble() ?? 0.0,
      taxAmount: (json['taxAmount'] as num?)?.toDouble() ?? 0.0,
      grandTotal: (json['grandTotal'] as num?)?.toDouble() ?? 0.0,
      platformCommission:
          (json['platformCommission'] as num?)?.toDouble() ?? 0.0,
      shopEarnings: (json['shopEarnings'] as num?)?.toDouble() ?? 0.0,
      deliveryPartnerEarnings:
          (json['deliveryPartnerEarnings'] as num?)?.toDouble() ?? 0.0,
      couponCostSharing: (json['couponCostSharing'] as num?)?.toDouble() ?? 0.0,
      serviceFee: (json['serviceFee'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$ShopSummaryModelImplToJson(
        _$ShopSummaryModelImpl instance) =>
    <String, dynamic>{
      'subTotal': instance.subTotal,
      'totalDiscount': instance.totalDiscount,
      'deliveryCharge': instance.deliveryCharge,
      'packagingCharge': instance.packagingCharge,
      'taxAmount': instance.taxAmount,
      'grandTotal': instance.grandTotal,
      'platformCommission': instance.platformCommission,
      'shopEarnings': instance.shopEarnings,
      'deliveryPartnerEarnings': instance.deliveryPartnerEarnings,
      'couponCostSharing': instance.couponCostSharing,
      'serviceFee': instance.serviceFee,
    };
