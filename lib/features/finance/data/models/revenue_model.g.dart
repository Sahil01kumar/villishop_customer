// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RevenueModelImpl _$$RevenueModelImplFromJson(Map<String, dynamic> json) =>
    _$RevenueModelImpl(
      id: json['id'] as String,
      grossSellingAmount: (json['grossSellingAmount'] as num).toDouble(),
      netRevenue: (json['netRevenue'] as num?)?.toDouble() ?? 0.0,
      shopSettlementAmount:
          (json['shopSettlementAmount'] as num?)?.toDouble() ?? 0.0,
      deliveryPartnerEarnings:
          (json['deliveryPartnerEarnings'] as num?)?.toDouble() ?? 0.0,
      platformProfit: (json['platformProfit'] as num?)?.toDouble() ?? 0.0,
      commission:
          CommissionModel.fromJson(json['commission'] as Map<String, dynamic>),
      tax: TaxModel.fromJson(json['tax'] as Map<String, dynamic>),
      paymentGatewayCharges:
          (json['paymentGatewayCharges'] as num?)?.toDouble() ?? 0.0,
      couponDiscountCost:
          (json['couponDiscountCost'] as num?)?.toDouble() ?? 0.0,
      cashbackCost: (json['cashbackCost'] as num?)?.toDouble() ?? 0.0,
      grossMarginPercentage:
          (json['grossMarginPercentage'] as num?)?.toDouble() ?? 0.0,
      netMarginPercentage:
          (json['netMarginPercentage'] as num?)?.toDouble() ?? 0.0,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$RevenueModelImplToJson(_$RevenueModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'grossSellingAmount': instance.grossSellingAmount,
      'netRevenue': instance.netRevenue,
      'shopSettlementAmount': instance.shopSettlementAmount,
      'deliveryPartnerEarnings': instance.deliveryPartnerEarnings,
      'platformProfit': instance.platformProfit,
      'commission': instance.commission,
      'tax': instance.tax,
      'paymentGatewayCharges': instance.paymentGatewayCharges,
      'couponDiscountCost': instance.couponDiscountCost,
      'cashbackCost': instance.cashbackCost,
      'grossMarginPercentage': instance.grossMarginPercentage,
      'netMarginPercentage': instance.netMarginPercentage,
      'createdAt': instance.createdAt.toIso8601String(),
    };
