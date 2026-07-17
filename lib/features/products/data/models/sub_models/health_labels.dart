import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_labels.freezed.dart';
part 'health_labels.g.dart';

@freezed
class HealthLabels with _$HealthLabels {
  const factory HealthLabels({
    @Default(false) bool isOrganic,
    @Default(false) bool isVegan,
    @Default(false) bool isGlutenFree,
    @Default(false) bool isSugarFree,
    @Default(false) bool isJain,
    @Default(false) bool isHalal,
    @Default(false) bool isHighProtein,
    @Default(false) bool isLowFat,
    @Default(false) bool isEcoFriendly,
  }) = _HealthLabels;

  factory HealthLabels.fromJson(Map<String, dynamic> json) =>
      _$HealthLabelsFromJson(json);
}
