// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_validation_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderValidationResultImpl _$$OrderValidationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderValidationResultImpl(
      isValid: json['isValid'] as bool? ?? true,
      errorCode: json['errorCode'] as String?,
      errorTitle: json['errorTitle'] as String?,
      errorMessage: json['errorMessage'] as String?,
      severity:
          $enumDecodeNullable(_$ValidationSeverityEnumMap, json['severity']) ??
              ValidationSeverity.info,
      actionRequired: json['actionRequired'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$OrderValidationResultImplToJson(
        _$OrderValidationResultImpl instance) =>
    <String, dynamic>{
      'isValid': instance.isValid,
      'errorCode': instance.errorCode,
      'errorTitle': instance.errorTitle,
      'errorMessage': instance.errorMessage,
      'severity': _$ValidationSeverityEnumMap[instance.severity]!,
      'actionRequired': instance.actionRequired,
      'metadata': instance.metadata,
    };

const _$ValidationSeverityEnumMap = {
  ValidationSeverity.info: 'info',
  ValidationSeverity.warning: 'warning',
  ValidationSeverity.error: 'error',
  ValidationSeverity.critical: 'critical',
};
