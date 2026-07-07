// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LedgerModelImpl _$$LedgerModelImplFromJson(Map<String, dynamic> json) =>
    _$LedgerModelImpl(
      id: json['id'] as String,
      type: $enumDecode(_$LedgerTypeEnumMap, json['type']),
      entryType: $enumDecode(_$EntryTypeEnumMap, json['entryType']),
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String,
      referenceId: json['referenceId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      balanceAfter: (json['balanceAfter'] as num?)?.toDouble() ?? 0.0,
      metadata: json['metadata'] as String?,
    );

Map<String, dynamic> _$$LedgerModelImplToJson(_$LedgerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$LedgerTypeEnumMap[instance.type]!,
      'entryType': _$EntryTypeEnumMap[instance.entryType]!,
      'amount': instance.amount,
      'description': instance.description,
      'referenceId': instance.referenceId,
      'createdAt': instance.createdAt.toIso8601String(),
      'balanceAfter': instance.balanceAfter,
      'metadata': instance.metadata,
    };

const _$LedgerTypeEnumMap = {
  LedgerType.platform: 'platform',
  LedgerType.shop: 'shop',
  LedgerType.customer: 'customer',
  LedgerType.delivery: 'delivery',
  LedgerType.finance: 'finance',
};

const _$EntryTypeEnumMap = {
  EntryType.credit: 'credit',
  EntryType.debit: 'debit',
};
