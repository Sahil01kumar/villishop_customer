import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_intelligence.freezed.dart';
part 'ai_intelligence.g.dart';

@freezed
class AiIntelligence with _$AiIntelligence {
  const factory AiIntelligence({
    @Default(0.0) double healthScore,
    @Default(0.0) double nutritionScore,
    @Default(0.0) double freshnessScore,
    @Default(0.0) double recommendationScore,
    @Default(0.0) double popularityScore,
    @Default(false) bool hasExpiryAlert,
    @Default(1) int suggestedQuantity,
  }) = _AiIntelligence;

  factory AiIntelligence.fromJson(Map<String, dynamic> json) =>
      _$AiIntelligenceFromJson(json);
}
