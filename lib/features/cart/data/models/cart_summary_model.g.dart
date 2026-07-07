// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartSummaryModelImpl _$$CartSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CartSummaryModelImpl(
      subTotal: (json['subTotal'] as num?)?.toDouble() ?? 0.0,
      totalDiscount: (json['totalDiscount'] as num?)?.toDouble() ?? 0.0,
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble() ?? 0.0,
      packagingCharge: (json['packagingCharge'] as num?)?.toDouble() ?? 0.0,
      convenienceFee: (json['convenienceFee'] as num?)?.toDouble() ?? 0.0,
      platformFee: (json['platformFee'] as num?)?.toDouble() ?? 0.0,
      totalTax: (json['totalTax'] as num?)?.toDouble() ?? 0.0,
      gstAmount: (json['gstAmount'] as num?)?.toDouble() ?? 0.0,
      surgePricing: (json['surgePricing'] as num?)?.toDouble() ?? 0.0,
      walletDiscount: (json['walletDiscount'] as num?)?.toDouble() ?? 0.0,
      couponDiscount: (json['couponDiscount'] as num?)?.toDouble() ?? 0.0,
      cashbackAmount: (json['cashbackAmount'] as num?)?.toDouble() ?? 0.0,
      grandTotal: (json['grandTotal'] as num?)?.toDouble() ?? 0.0,
      totalItems: (json['totalItems'] as num?)?.toInt() ?? 0,
      totalQuantity: (json['totalQuantity'] as num?)?.toInt() ?? 0,
      shopSettlementAmount:
          (json['shopSettlementAmount'] as num?)?.toDouble() ?? 0.0,
      platformEarnings: (json['platformEarnings'] as num?)?.toDouble() ?? 0.0,
      deliveryPartnerEarnings:
          (json['deliveryPartnerEarnings'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CartSummaryModelImplToJson(
        _$CartSummaryModelImpl instance) =>
    <String, dynamic>{
      'subTotal': instance.subTotal,
      'totalDiscount': instance.totalDiscount,
      'deliveryCharge': instance.deliveryCharge,
      'packagingCharge': instance.packagingCharge,
      'convenienceFee': instance.convenienceFee,
      'platformFee': instance.platformFee,
      'totalTax': instance.totalTax,
      'gstAmount': instance.gstAmount,
      'surgePricing': instance.surgePricing,
      'walletDiscount': instance.walletDiscount,
      'couponDiscount': instance.couponDiscount,
      'cashbackAmount': instance.cashbackAmount,
      'grandTotal': instance.grandTotal,
      'totalItems': instance.totalItems,
      'totalQuantity': instance.totalQuantity,
      'shopSettlementAmount': instance.shopSettlementAmount,
      'platformEarnings': instance.platformEarnings,
      'deliveryPartnerEarnings': instance.deliveryPartnerEarnings,
    };
