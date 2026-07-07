// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardPointModelImpl _$$RewardPointModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RewardPointModelImpl(
      id: json['id'] as String,
      points: (json['points'] as num).toInt(),
      source: $enumDecode(_$RewardSourceEnumMap, json['source']),
      earnedAt: DateTime.parse(json['earnedAt'] as String),
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      isExpired: json['isExpired'] as bool? ?? false,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$RewardPointModelImplToJson(
        _$RewardPointModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points,
      'source': _$RewardSourceEnumMap[instance.source]!,
      'earnedAt': instance.earnedAt.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'isExpired': instance.isExpired,
      'description': instance.description,
    };

const _$RewardSourceEnumMap = {
  RewardSource.signup: 'signup',
  RewardSource.referral: 'referral',
  RewardSource.daily: 'daily',
  RewardSource.festival: 'festival',
  RewardSource.loyalty: 'loyalty',
  RewardSource.order: 'order',
};
