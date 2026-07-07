// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_validation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartValidationModelImpl _$$CartValidationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CartValidationModelImpl(
      cartId: json['cartId'] as String,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  ValidationResultModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isCheckoutAllowed: json['isCheckoutAllowed'] as bool? ?? true,
      validatedAt: DateTime.parse(json['validatedAt'] as String),
      errorCount: (json['errorCount'] as num?)?.toInt() ?? 0,
      warningCount: (json['warningCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CartValidationModelImplToJson(
        _$CartValidationModelImpl instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'results': instance.results,
      'isCheckoutAllowed': instance.isCheckoutAllowed,
      'validatedAt': instance.validatedAt.toIso8601String(),
      'errorCount': instance.errorCount,
      'warningCount': instance.warningCount,
    };
