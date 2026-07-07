// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutritionInfoImpl _$$NutritionInfoImplFromJson(Map<String, dynamic> json) =>
    _$NutritionInfoImpl(
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      nutritionalInfo: json['nutritionalInfo'] as String?,
      calories: (json['calories'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      sugar: (json['sugar'] as num?)?.toDouble(),
      fibre: (json['fibre'] as num?)?.toDouble(),
      carbohydrates: (json['carbohydrates'] as num?)?.toDouble(),
      sodium: (json['sodium'] as num?)?.toDouble(),
      vitamins: (json['vitamins'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      minerals: (json['minerals'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      allergens: (json['allergens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NutritionInfoImplToJson(_$NutritionInfoImpl instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
      'nutritionalInfo': instance.nutritionalInfo,
      'calories': instance.calories,
      'protein': instance.protein,
      'fat': instance.fat,
      'sugar': instance.sugar,
      'fibre': instance.fibre,
      'carbohydrates': instance.carbohydrates,
      'sodium': instance.sodium,
      'vitamins': instance.vitamins,
      'minerals': instance.minerals,
      'allergens': instance.allergens,
    };
