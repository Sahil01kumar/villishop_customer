// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidationResultModelImpl _$$ValidationResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationResultModelImpl(
      ruleId: json['ruleId'] as String,
      message: json['message'] as String,
      severity: $enumDecode(_$ValidationSeverityEnumMap, json['severity']),
      isValid: json['isValid'] as bool? ?? true,
      errorCode: json['errorCode'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ValidationResultModelImplToJson(
        _$ValidationResultModelImpl instance) =>
    <String, dynamic>{
      'ruleId': instance.ruleId,
      'message': instance.message,
      'severity': _$ValidationSeverityEnumMap[instance.severity]!,
      'isValid': instance.isValid,
      'errorCode': instance.errorCode,
      'metadata': instance.metadata,
    };

const _$ValidationSeverityEnumMap = {
  ValidationSeverity.info: 'info',
  ValidationSeverity.warning: 'warning',
  ValidationSeverity.error: 'error',
  ValidationSeverity.critical: 'critical',
};
