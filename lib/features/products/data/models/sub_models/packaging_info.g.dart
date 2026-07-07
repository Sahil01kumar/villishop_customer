// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packaging_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackagingInfoImpl _$$PackagingInfoImplFromJson(Map<String, dynamic> json) =>
    _$PackagingInfoImpl(
      weight: (json['weight'] as num).toDouble(),
      unit: json['unit'] as String,
      packSize: json['packSize'] as String?,
      variant: json['variant'] as String?,
      piecesPerPack: (json['piecesPerPack'] as num?)?.toInt() ?? 1,
      cartonSize: json['cartonSize'] as String?,
    );

Map<String, dynamic> _$$PackagingInfoImplToJson(_$PackagingInfoImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'unit': instance.unit,
      'packSize': instance.packSize,
      'variant': instance.variant,
      'piecesPerPack': instance.piecesPerPack,
      'cartonSize': instance.cartonSize,
    };
