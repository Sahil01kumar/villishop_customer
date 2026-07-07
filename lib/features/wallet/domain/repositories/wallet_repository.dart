import 'package:villishop_customer/features/wallet/data/models/wallet_model.dart';
import 'package:villishop_customer/features/wallet/data/models/wallet_transaction_model.dart';
import 'package:villishop_customer/features/wallet/data/models/wallet_cashback_model.dart';
import 'package:villishop_customer/features/wallet/data/models/reward_point_model.dart';

abstract class WalletRepository {
  Future<WalletModel> getWallet();
  Future<List<WalletTransactionModel>> getTransactionHistory({int page = 1, int limit = 20});
  Future<List<WalletCashbackModel>> getCashbackHistory();
  Future<List<RewardPointModel>> getRewardHistory();
  Future<void> useWalletBalance(double amount, String orderId);
  Future<void> claimReward(String rewardId);
  
  // Future Architecture
  Future<void> syncWallet();
}
