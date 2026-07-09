// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodModelImpl _$$PaymentMethodModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String,
      type: $enumDecode(_$PaymentTypeEnumMap, json['type']),
      enabled: json['enabled'] as bool? ?? true,
      recommended: json['recommended'] as bool? ?? false,
      processingTime: json['processingTime'] as String? ?? 'Instant',
      supportsRefund: json['supportsRefund'] as bool? ?? true,
      supportsSplitPayment: json['supportsSplitPayment'] as bool? ?? true,
      unavailableReason: json['unavailableReason'] as String?,
      additionalCharge: (json['additionalCharge'] as num?)?.toDouble() ?? 0.0,
      badge: json['badge'] as String?,
    );

Map<String, dynamic> _$$PaymentMethodModelImplToJson(
        _$PaymentMethodModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'type': _$PaymentTypeEnumMap[instance.type]!,
      'enabled': instance.enabled,
      'recommended': instance.recommended,
      'processingTime': instance.processingTime,
      'supportsRefund': instance.supportsRefund,
      'supportsSplitPayment': instance.supportsSplitPayment,
      'unavailableReason': instance.unavailableReason,
      'additionalCharge': instance.additionalCharge,
      'badge': instance.badge,
    };

const _$PaymentTypeEnumMap = {
  PaymentType.upi: 'upi',
  PaymentType.card: 'card',
  PaymentType.netbanking: 'netbanking',
  PaymentType.wallet: 'wallet',
  PaymentType.cod: 'cod',
};
