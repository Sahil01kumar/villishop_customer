// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_cashback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletCashbackModelImpl _$$WalletCashbackModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletCashbackModelImpl(
      id: json['id'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: $enumDecode(_$CashbackStatusEnumMap, json['status']),
      earnedAt: DateTime.parse(json['earnedAt'] as String),
      availableAt: json['availableAt'] == null
          ? null
          : DateTime.parse(json['availableAt'] as String),
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      orderId: json['orderId'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$WalletCashbackModelImplToJson(
        _$WalletCashbackModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'status': _$CashbackStatusEnumMap[instance.status]!,
      'earnedAt': instance.earnedAt.toIso8601String(),
      'availableAt': instance.availableAt?.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'orderId': instance.orderId,
      'description': instance.description,
    };

const _$CashbackStatusEnumMap = {
  CashbackStatus.pending: 'pending',
  CashbackStatus.available: 'available',
  CashbackStatus.expired: 'expired',
  CashbackStatus.used: 'used',
};
