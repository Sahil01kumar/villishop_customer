// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceModelImpl _$$InvoiceModelImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceModelImpl(
      itemsTotal: (json['itemsTotal'] as num?)?.toDouble() ?? 0.0,
      sellingPrice: (json['sellingPrice'] as num?)?.toDouble() ?? 0.0,
      productDiscount: (json['productDiscount'] as num?)?.toDouble() ?? 0.0,
      couponDiscount: (json['couponDiscount'] as num?)?.toDouble() ?? 0.0,
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble() ?? 0.0,
      packingCharge: (json['packingCharge'] as num?)?.toDouble() ?? 5.0,
      platformFee: (json['platformFee'] as num?)?.toDouble() ?? 2.0,
      gstAmount: (json['gstAmount'] as num?)?.toDouble() ?? 0.0,
      grandTotal: (json['grandTotal'] as num?)?.toDouble() ?? 0.0,
      savedAmount: (json['savedAmount'] as num?)?.toDouble() ?? 0.0,
      isFreeDelivery: json['isFreeDelivery'] as bool? ?? false,
      taxBreakdown: (json['taxBreakdown'] as List<dynamic>?)
              ?.map((e) =>
                  CategoryTaxBreakdown.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InvoiceModelImplToJson(_$InvoiceModelImpl instance) =>
    <String, dynamic>{
      'itemsTotal': instance.itemsTotal,
      'sellingPrice': instance.sellingPrice,
      'productDiscount': instance.productDiscount,
      'couponDiscount': instance.couponDiscount,
      'deliveryCharge': instance.deliveryCharge,
      'packingCharge': instance.packingCharge,
      'platformFee': instance.platformFee,
      'gstAmount': instance.gstAmount,
      'grandTotal': instance.grandTotal,
      'savedAmount': instance.savedAmount,
      'isFreeDelivery': instance.isFreeDelivery,
      'taxBreakdown': instance.taxBreakdown,
    };

_$CategoryTaxBreakdownImpl _$$CategoryTaxBreakdownImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryTaxBreakdownImpl(
      category: json['category'] as String,
      taxableAmount: (json['taxableAmount'] as num).toDouble(),
      gstPercentage: (json['gstPercentage'] as num).toDouble(),
      gstAmount: (json['gstAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$$CategoryTaxBreakdownImplToJson(
        _$CategoryTaxBreakdownImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'taxableAmount': instance.taxableAmount,
      'gstPercentage': instance.gstPercentage,
      'gstAmount': instance.gstAmount,
    };
