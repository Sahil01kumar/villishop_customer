// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletTransactionModelImpl _$$WalletTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletTransactionModelImpl(
      id: json['id'] as String,
      amount: (json['amount'] as num).toDouble(),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      status: $enumDecode(_$TransactionStatusEnumMap, json['status']),
      category: $enumDecode(_$TransactionCategoryEnumMap, json['category']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      referenceId: json['referenceId'] as String?,
      description: json['description'] as String?,
      balanceAfter: (json['balanceAfter'] as num?)?.toDouble() ?? 0.0,
      shopId: json['shopId'] as String?,
      platformCommission:
          (json['platformCommission'] as num?)?.toDouble() ?? 0.0,
      shopEarnings: (json['shopEarnings'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$WalletTransactionModelImplToJson(
        _$WalletTransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'status': _$TransactionStatusEnumMap[instance.status]!,
      'category': _$TransactionCategoryEnumMap[instance.category]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'referenceId': instance.referenceId,
      'description': instance.description,
      'balanceAfter': instance.balanceAfter,
      'shopId': instance.shopId,
      'platformCommission': instance.platformCommission,
      'shopEarnings': instance.shopEarnings,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.credit: 'credit',
  TransactionType.debit: 'debit',
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.pending: 'pending',
  TransactionStatus.completed: 'completed',
  TransactionStatus.failed: 'failed',
  TransactionStatus.refunded: 'refunded',
};

const _$TransactionCategoryEnumMap = {
  TransactionCategory.order: 'order',
  TransactionCategory.cashback: 'cashback',
  TransactionCategory.refund: 'refund',
  TransactionCategory.referral: 'referral',
  TransactionCategory.signup: 'signup',
  TransactionCategory.manual: 'manual',
};
