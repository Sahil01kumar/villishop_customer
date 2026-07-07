import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_result_model.freezed.dart';
part 'validation_result_model.g.dart';

enum ValidationSeverity { info, warning, error, critical }

@freezed
class ValidationResultModel with _$ValidationResultModel {
  const factory ValidationResultModel({
    required String ruleId,
    required String message,
    required ValidationSeverity severity,
    @Default(true) bool isValid,
    String? errorCode,
    Map<String, dynamic>? metadata,
  }) = _ValidationResultModel;

  factory ValidationResultModel.fromJson(Map<String, dynamic> json) => _$ValidationResultModelFromJson(json);
}
