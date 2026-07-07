// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CashbackModelImpl _$$CashbackModelImplFromJson(Map<String, dynamic> json) =>
    _$CashbackModelImpl(
      type: $enumDecode(_$CashbackTypeEnumMap, json['type']),
      value: (json['value'] as num).toDouble(),
      isPercentage: json['isPercentage'] as bool? ?? false,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
    );

Map<String, dynamic> _$$CashbackModelImplToJson(_$CashbackModelImpl instance) =>
    <String, dynamic>{
      'type': _$CashbackTypeEnumMap[instance.type]!,
      'value': instance.value,
      'isPercentage': instance.isPercentage,
      'expiryDate': instance.expiryDate?.toIso8601String(),
    };

const _$CashbackTypeEnumMap = {
  CashbackType.instant: 'instant',
  CashbackType.wallet: 'wallet',
  CashbackType.future: 'future',
};
