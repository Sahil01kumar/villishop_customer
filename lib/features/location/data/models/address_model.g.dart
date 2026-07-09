// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: json['id'] as String,
      customerId: json['customerId'] as String?,
      label: json['label'] as String,
      receiverName: json['receiverName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      alternatePhone: json['alternatePhone'] as String?,
      houseNumber: json['houseNumber'] as String?,
      building: json['building'] as String?,
      floor: json['floor'] as String?,
      landmark: json['landmark'] as String?,
      area: json['area'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      fullAddress: json['fullAddress'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      deliveryInstructions: json['deliveryInstructions'] as String?,
      isDefault: json['isDefault'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'label': instance.label,
      'receiverName': instance.receiverName,
      'phoneNumber': instance.phoneNumber,
      'alternatePhone': instance.alternatePhone,
      'houseNumber': instance.houseNumber,
      'building': instance.building,
      'floor': instance.floor,
      'landmark': instance.landmark,
      'area': instance.area,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'fullAddress': instance.fullAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'deliveryInstructions': instance.deliveryInstructions,
      'isDefault': instance.isDefault,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
