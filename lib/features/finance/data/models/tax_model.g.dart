// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxModelImpl _$$TaxModelImplFromJson(Map<String, dynamic> json) =>
    _$TaxModelImpl(
      cgst: (json['cgst'] as num?)?.toDouble() ?? 0.0,
      sgst: (json['sgst'] as num?)?.toDouble() ?? 0.0,
      igst: (json['igst'] as num?)?.toDouble() ?? 0.0,
      totalTax: (json['totalTax'] as num?)?.toDouble() ?? 0.0,
      gstPercentage: (json['gstPercentage'] as num?)?.toDouble() ?? 0.0,
      taxLabel: json['taxLabel'] as String? ?? 'GST_INVOICE_READY',
    );

Map<String, dynamic> _$$TaxModelImplToJson(_$TaxModelImpl instance) =>
    <String, dynamic>{
      'cgst': instance.cgst,
      'sgst': instance.sgst,
      'igst': instance.igst,
      'totalTax': instance.totalTax,
      'gstPercentage': instance.gstPercentage,
      'taxLabel': instance.taxLabel,
    };
