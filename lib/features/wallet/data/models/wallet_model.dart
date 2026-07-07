import 'package:freezed_annotation/freezed_annotation.dart';
import 'wallet_transaction_model.dart';
import 'wallet_cashback_model.dart';
import 'reward_point_model.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    required String id,
    required String userId,
    @Default(0.0) double balance,
    @Default(0.0) double pendingCashback,
    @Default(0) int loyaltyPoints,
    @Default([]) List<WalletTransactionModel> recentTransactions,
    @Default([]) List<WalletCashbackModel> activeCashbacks,
    @Default([]) List<RewardPointModel> recentRewards,
    
    // Revenue & Ledger Architecture
    @Default(0.0) double totalRefundsReceived,
    @Default(0.0) double totalCashbackEarned,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);
}

@freezed
class WalletSummaryModel with _$WalletSummaryModel {
  const factory WalletSummaryModel({
    @Default(0.0) double totalBalance,
    @Default(0.0) double pendingBalance,
    @Default(0.0) double lifetimeEarnings,
    @Default(0.0) double lifetimeSavings,
    @Default(0) int totalRewards,
  }) = _WalletSummaryModel;

  factory WalletSummaryModel.fromJson(Map<String, dynamic> json) => _$WalletSummaryModelFromJson(json);
}
