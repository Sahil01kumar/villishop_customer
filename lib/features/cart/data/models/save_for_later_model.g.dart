// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_for_later_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveForLaterModelImpl _$$SaveForLaterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveForLaterModelImpl(
      id: json['id'] as String,
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      savedAt: DateTime.parse(json['savedAt'] as String),
      aiRelevanceScore: (json['aiRelevanceScore'] as num?)?.toDouble() ?? 0.0,
      priceDropAlertReady: json['priceDropAlertReady'] as bool? ?? false,
      stockBackAlertReady: json['stockBackAlertReady'] as bool? ?? false,
    );

Map<String, dynamic> _$$SaveForLaterModelImplToJson(
        _$SaveForLaterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'savedAt': instance.savedAt.toIso8601String(),
      'aiRelevanceScore': instance.aiRelevanceScore,
      'priceDropAlertReady': instance.priceDropAlertReady,
      'stockBackAlertReady': instance.stockBackAlertReady,
    };
