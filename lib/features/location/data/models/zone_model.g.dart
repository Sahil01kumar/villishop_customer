// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZoneModelImpl _$$ZoneModelImplFromJson(Map<String, dynamic> json) =>
    _$ZoneModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      status: $enumDecode(_$ZoneStatusEnumMap, json['status']),
      polygon: (json['polygon'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList() ??
          const [],
      estimatedLaunchDate: json['estimatedLaunchDate'] as String?,
      interestedUsers: (json['interestedUsers'] as num?)?.toInt() ?? 0,
      upcomingStores: (json['upcomingStores'] as num?)?.toInt() ?? 0,
      shopCount: (json['shopCount'] as num?)?.toInt() ?? 0,
      partnerCount: (json['partnerCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ZoneModelImplToJson(_$ZoneModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$ZoneStatusEnumMap[instance.status]!,
      'polygon': instance.polygon,
      'estimatedLaunchDate': instance.estimatedLaunchDate,
      'interestedUsers': instance.interestedUsers,
      'upcomingStores': instance.upcomingStores,
      'shopCount': instance.shopCount,
      'partnerCount': instance.partnerCount,
    };

const _$ZoneStatusEnumMap = {
  ZoneStatus.active: 'active',
  ZoneStatus.launchingSoon: 'launching_soon',
  ZoneStatus.comingSoon: 'coming_soon',
};
