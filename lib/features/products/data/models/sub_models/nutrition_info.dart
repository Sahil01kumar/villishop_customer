import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_info.freezed.dart';
part 'nutrition_info.g.dart';

@freezed
class NutritionInfo with _$NutritionInfo {
  const factory NutritionInfo({
    @Default([]) List<String> ingredients,
    String? nutritionalInfo, // Summary or table representation
    double? calories,
    double? protein,
    double? fat,
    double? sugar,
    double? fibre,
    double? carbohydrates,
    double? sodium,
    @Default([]) List<String> vitamins,
    @Default([]) List<String> minerals,
    @Default([]) List<String> allergens,
  }) = _NutritionInfo;

  factory NutritionInfo.fromJson(Map<String, dynamic> json) =>
      _$NutritionInfoFromJson(json);
}
