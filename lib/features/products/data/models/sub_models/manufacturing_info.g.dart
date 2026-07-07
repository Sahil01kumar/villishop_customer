// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturing_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManufacturingInfoImpl _$$ManufacturingInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ManufacturingInfoImpl(
      manufacturer: json['manufacturer'] as String,
      packedBy: json['packedBy'] as String,
      importedBy: json['importedBy'] as String?,
      countryOfOrigin: json['countryOfOrigin'] as String,
      manufacturingDate: json['manufacturingDate'] as String?,
      expiryDate: json['expiryDate'] as String?,
      shelfLife: json['shelfLife'] as String?,
      batchNumber: json['batchNumber'] as String?,
      lotNumber: json['lotNumber'] as String?,
      fssaiNumber: json['fssaiNumber'] as String?,
      hsnCode: json['hsnCode'] as String?,
      gstPercentage: (json['gstPercentage'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$ManufacturingInfoImplToJson(
        _$ManufacturingInfoImpl instance) =>
    <String, dynamic>{
      'manufacturer': instance.manufacturer,
      'packedBy': instance.packedBy,
      'importedBy': instance.importedBy,
      'countryOfOrigin': instance.countryOfOrigin,
      'manufacturingDate': instance.manufacturingDate,
      'expiryDate': instance.expiryDate,
      'shelfLife': instance.shelfLife,
      'batchNumber': instance.batchNumber,
      'lotNumber': instance.lotNumber,
      'fssaiNumber': instance.fssaiNumber,
      'hsnCode': instance.hsnCode,
      'gstPercentage': instance.gstPercentage,
    };
