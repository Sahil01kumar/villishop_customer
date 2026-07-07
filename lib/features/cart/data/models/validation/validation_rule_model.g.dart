// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_rule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidationRuleModelImpl _$$ValidationRuleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationRuleModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: $enumDecode(_$RuleCategoryEnumMap, json['category']),
      isEnabled: json['isEnabled'] as bool,
      config: json['config'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$ValidationRuleModelImplToJson(
        _$ValidationRuleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$RuleCategoryEnumMap[instance.category]!,
      'isEnabled': instance.isEnabled,
      'config': instance.config,
    };

const _$RuleCategoryEnumMap = {
  RuleCategory.product: 'product',
  RuleCategory.quantity: 'quantity',
  RuleCategory.price: 'price',
  RuleCategory.delivery: 'delivery',
  RuleCategory.customer: 'customer',
  RuleCategory.payment: 'payment',
  RuleCategory.revenue: 'revenue',
};
