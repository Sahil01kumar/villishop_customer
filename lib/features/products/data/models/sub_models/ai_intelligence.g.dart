// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_intelligence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiIntelligenceImpl _$$AiIntelligenceImplFromJson(Map<String, dynamic> json) =>
    _$AiIntelligenceImpl(
      healthScore: (json['healthScore'] as num?)?.toDouble() ?? 0.0,
      nutritionScore: (json['nutritionScore'] as num?)?.toDouble() ?? 0.0,
      freshnessScore: (json['freshnessScore'] as num?)?.toDouble() ?? 0.0,
      recommendationScore:
          (json['recommendationScore'] as num?)?.toDouble() ?? 0.0,
      popularityScore: (json['popularityScore'] as num?)?.toDouble() ?? 0.0,
      hasExpiryAlert: json['hasExpiryAlert'] as bool? ?? false,
      suggestedQuantity: (json['suggestedQuantity'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$AiIntelligenceImplToJson(
        _$AiIntelligenceImpl instance) =>
    <String, dynamic>{
      'healthScore': instance.healthScore,
      'nutritionScore': instance.nutritionScore,
      'freshnessScore': instance.freshnessScore,
      'recommendationScore': instance.recommendationScore,
      'popularityScore': instance.popularityScore,
      'hasExpiryAlert': instance.hasExpiryAlert,
      'suggestedQuantity': instance.suggestedQuantity,
    };
