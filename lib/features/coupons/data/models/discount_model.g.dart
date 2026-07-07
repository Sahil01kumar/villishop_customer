// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      type: $enumDecode(_$DiscountTypeEnumMap, json['type']),
      value: (json['value'] as num).toDouble(),
      buyQuantity: (json['buyQuantity'] as num?)?.toInt() ?? 0,
      getQuantity: (json['getQuantity'] as num?)?.toInt() ?? 0,
      comboProductIds: (json['comboProductIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'type': _$DiscountTypeEnumMap[instance.type]!,
      'value': instance.value,
      'buyQuantity': instance.buyQuantity,
      'getQuantity': instance.getQuantity,
      'comboProductIds': instance.comboProductIds,
    };

const _$DiscountTypeEnumMap = {
  DiscountType.flat: 'flat',
  DiscountType.percentage: 'percentage',
  DiscountType.bogo: 'bogo',
  DiscountType.buyXGetY: 'buyXGetY',
  DiscountType.combo: 'combo',
  DiscountType.freeDelivery: 'freeDelivery',
};
