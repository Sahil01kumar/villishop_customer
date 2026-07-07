// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartAnalyticsModelImpl _$$CartAnalyticsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CartAnalyticsModelImpl(
      cartViewCount: (json['cartViewCount'] as num?)?.toInt() ?? 0,
      abandonedCount: (json['abandonedCount'] as num?)?.toInt() ?? 0,
      totalAddedProducts: (json['totalAddedProducts'] as num?)?.toInt() ?? 0,
      totalRemovedProducts:
          (json['totalRemovedProducts'] as num?)?.toInt() ?? 0,
      potentialRevenueLost:
          (json['potentialRevenueLost'] as num?)?.toDouble() ?? 0.0,
      lastAbandonedAt: json['lastAbandonedAt'] == null
          ? null
          : DateTime.parse(json['lastAbandonedAt'] as String),
      frequentlyPurchasedProductIds:
          (json['frequentlyPurchasedProductIds'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$CartAnalyticsModelImplToJson(
        _$CartAnalyticsModelImpl instance) =>
    <String, dynamic>{
      'cartViewCount': instance.cartViewCount,
      'abandonedCount': instance.abandonedCount,
      'totalAddedProducts': instance.totalAddedProducts,
      'totalRemovedProducts': instance.totalRemovedProducts,
      'potentialRevenueLost': instance.potentialRevenueLost,
      'lastAbandonedAt': instance.lastAbandonedAt?.toIso8601String(),
      'frequentlyPurchasedProductIds': instance.frequentlyPurchasedProductIds,
    };
