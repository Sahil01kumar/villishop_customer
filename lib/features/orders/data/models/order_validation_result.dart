import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_validation_result.freezed.dart';
part 'order_validation_result.g.dart';

enum ValidationSeverity {
  @JsonValue('info')
  info,
  @JsonValue('warning')
  warning,
  @JsonValue('error')
  error,
  @JsonValue('critical')
  critical,
}

@freezed
class OrderValidationResult with _$OrderValidationResult {
  const factory OrderValidationResult({
    @Default(true) bool isValid,
    String? errorCode,
    String? errorTitle,
    String? errorMessage,
    @Default(ValidationSeverity.info) ValidationSeverity severity,
    String? actionRequired,
    @Default({}) Map<String, dynamic> metadata,
  }) = _OrderValidationResult;

  factory OrderValidationResult.fromJson(Map<String, dynamic> json) =>
      _$OrderValidationResultFromJson(json);

  factory OrderValidationResult.success() =>
      const OrderValidationResult(isValid: true);

  factory OrderValidationResult.failure({
    required String code,
    required String title,
    required String message,
    ValidationSeverity severity = ValidationSeverity.error,
    String? action,
  }) =>
      OrderValidationResult(
        isValid: false,
        errorCode: code,
        errorTitle: title,
        errorMessage: message,
        severity: severity,
        actionRequired: action,
      );
}
