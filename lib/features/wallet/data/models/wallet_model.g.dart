// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletModelImpl _$$WalletModelImplFromJson(Map<String, dynamic> json) =>
    _$WalletModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      pendingCashback: (json['pendingCashback'] as num?)?.toDouble() ?? 0.0,
      loyaltyPoints: (json['loyaltyPoints'] as num?)?.toInt() ?? 0,
      recentTransactions: (json['recentTransactions'] as List<dynamic>?)
              ?.map((e) =>
                  WalletTransactionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      activeCashbacks: (json['activeCashbacks'] as List<dynamic>?)
              ?.map((e) =>
                  WalletCashbackModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recentRewards: (json['recentRewards'] as List<dynamic>?)
              ?.map((e) => RewardPointModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalRefundsReceived:
          (json['totalRefundsReceived'] as num?)?.toDouble() ?? 0.0,
      totalCashbackEarned:
          (json['totalCashbackEarned'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$WalletModelImplToJson(_$WalletModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'balance': instance.balance,
      'pendingCashback': instance.pendingCashback,
      'loyaltyPoints': instance.loyaltyPoints,
      'recentTransactions': instance.recentTransactions,
      'activeCashbacks': instance.activeCashbacks,
      'recentRewards': instance.recentRewards,
      'totalRefundsReceived': instance.totalRefundsReceived,
      'totalCashbackEarned': instance.totalCashbackEarned,
    };

_$WalletSummaryModelImpl _$$WalletSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletSummaryModelImpl(
      totalBalance: (json['totalBalance'] as num?)?.toDouble() ?? 0.0,
      pendingBalance: (json['pendingBalance'] as num?)?.toDouble() ?? 0.0,
      lifetimeEarnings: (json['lifetimeEarnings'] as num?)?.toDouble() ?? 0.0,
      lifetimeSavings: (json['lifetimeSavings'] as num?)?.toDouble() ?? 0.0,
      totalRewards: (json['totalRewards'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WalletSummaryModelImplToJson(
        _$WalletSummaryModelImpl instance) =>
    <String, dynamic>{
      'totalBalance': instance.totalBalance,
      'pendingBalance': instance.pendingBalance,
      'lifetimeEarnings': instance.lifetimeEarnings,
      'lifetimeSavings': instance.lifetimeSavings,
      'totalRewards': instance.totalRewards,
    };
