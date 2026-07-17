// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorageInfoImpl _$$StorageInfoImplFromJson(Map<String, dynamic> json) =>
    _$StorageInfoImpl(
      storageTemperature: json['storageTemperature'] as String?,
      storageInstructions: json['storageInstructions'] as String?,
      isColdStorageRequired: json['isColdStorageRequired'] as bool? ?? false,
      isRefrigerated: json['isRefrigerated'] as bool? ?? false,
      isFrozen: json['isFrozen'] as bool? ?? false,
      keepAwayFromSunlight: json['keepAwayFromSunlight'] as bool? ?? false,
      isFragile: json['isFragile'] as bool? ?? false,
    );

Map<String, dynamic> _$$StorageInfoImplToJson(_$StorageInfoImpl instance) =>
    <String, dynamic>{
      'storageTemperature': instance.storageTemperature,
      'storageInstructions': instance.storageInstructions,
      'isColdStorageRequired': instance.isColdStorageRequired,
      'isRefrigerated': instance.isRefrigerated,
      'isFrozen': instance.isFrozen,
      'keepAwayFromSunlight': instance.keepAwayFromSunlight,
      'isFragile': instance.isFragile,
    };
