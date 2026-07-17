import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_rule_model.freezed.dart';
part 'validation_rule_model.g.dart';

enum RuleCategory {
  product,
  quantity,
  price,
  delivery,
  customer,
  payment,
  revenue
}

@freezed
class ValidationRuleModel with _$ValidationRuleModel {
  const factory ValidationRuleModel({
    required String id,
    required String name,
    required RuleCategory category,
    required bool isEnabled,
    @Default({}) Map<String, dynamic> config,
  }) = _ValidationRuleModel;

  factory ValidationRuleModel.fromJson(Map<String, dynamic> json) =>
      _$ValidationRuleModelFromJson(json);
}
