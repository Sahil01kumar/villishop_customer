// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryInfoImpl _$$DeliveryInfoImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryInfoImpl(
      deliveryEta: json['deliveryEta'] as String?,
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble() ?? 0.0,
      isFreeDelivery: json['isFreeDelivery'] as bool? ?? false,
      isExpressDeliveryAvailable:
          json['isExpressDeliveryAvailable'] as bool? ?? false,
    );

Map<String, dynamic> _$$DeliveryInfoImplToJson(_$DeliveryInfoImpl instance) =>
    <String, dynamic>{
      'deliveryEta': instance.deliveryEta,
      'deliveryCharge': instance.deliveryCharge,
      'isFreeDelivery': instance.isFreeDelivery,
      'isExpressDeliveryAvailable': instance.isExpressDeliveryAvailable,
    };
