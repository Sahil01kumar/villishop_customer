// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_optimization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartOptimizationModelImpl _$$CartOptimizationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CartOptimizationModelImpl(
      smartRecommendations: (json['smartRecommendations'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bundleSuggestions: (json['bundleSuggestions'] as List<dynamic>?)
              ?.map((e) =>
                  CartBundleSuggestion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      predictedPriceNextOrder:
          (json['predictedPriceNextOrder'] as num?)?.toDouble() ?? 0.0,
      aiUpsellPotential: (json['aiUpsellPotential'] as num?)?.toDouble() ?? 0.0,
      isAbandonedCartReminderEnabled:
          json['isAbandonedCartReminderEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$CartOptimizationModelImplToJson(
        _$CartOptimizationModelImpl instance) =>
    <String, dynamic>{
      'smartRecommendations': instance.smartRecommendations,
      'bundleSuggestions': instance.bundleSuggestions,
      'predictedPriceNextOrder': instance.predictedPriceNextOrder,
      'aiUpsellPotential': instance.aiUpsellPotential,
      'isAbandonedCartReminderEnabled': instance.isAbandonedCartReminderEnabled,
    };

_$CartBundleSuggestionImpl _$$CartBundleSuggestionImplFromJson(
        Map<String, dynamic> json) =>
    _$CartBundleSuggestionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bundlePrice: (json['bundlePrice'] as num).toDouble(),
      savingsAmount: (json['savingsAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$$CartBundleSuggestionImplToJson(
        _$CartBundleSuggestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'products': instance.products,
      'bundlePrice': instance.bundlePrice,
      'savingsAmount': instance.savingsAmount,
    };
