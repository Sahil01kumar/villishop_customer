// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettlementModelImpl _$$SettlementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SettlementModelImpl(
      id: json['id'] as String,
      referenceId: json['referenceId'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: $enumDecode(_$SettlementStatusEnumMap, json['status']),
      scheduledDate: DateTime.parse(json['scheduledDate'] as String),
      processedDate: json['processedDate'] == null
          ? null
          : DateTime.parse(json['processedDate'] as String),
      utrNumber: json['utrNumber'] as String?,
      bankAccountDetails: json['bankAccountDetails'] as String?,
      logs:
          (json['logs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$SettlementModelImplToJson(
        _$SettlementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
      'amount': instance.amount,
      'status': _$SettlementStatusEnumMap[instance.status]!,
      'scheduledDate': instance.scheduledDate.toIso8601String(),
      'processedDate': instance.processedDate?.toIso8601String(),
      'utrNumber': instance.utrNumber,
      'bankAccountDetails': instance.bankAccountDetails,
      'logs': instance.logs,
    };

const _$SettlementStatusEnumMap = {
  SettlementStatus.pending: 'pending',
  SettlementStatus.inProgress: 'inProgress',
  SettlementStatus.completed: 'completed',
  SettlementStatus.failed: 'failed',
  SettlementStatus.partiallyRefunded: 'partiallyRefunded',
};
