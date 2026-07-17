import '../../domain/repositories/wallet_repository.dart';
import '../models/wallet_model.dart';
import '../models/wallet_transaction_model.dart';
import '../models/wallet_cashback_model.dart';
import '../models/reward_point_model.dart';

class WalletRepositoryImpl implements WalletRepository {
  @override
  Future<WalletModel> getWallet() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const WalletModel(
      id: 'w1',
      userId: 'u1',
      balance: 450.0,
      loyaltyPoints: 120,
      pendingCashback: 50.0,
    );
  }

  @override
  Future<List<WalletTransactionModel>> getTransactionHistory(
      {int page = 1, int limit = 20}) async {
    return [
      WalletTransactionModel(
        id: 't1',
        amount: -250.0,
        type: TransactionType.debit,
        status: TransactionStatus.completed,
        category: TransactionCategory.order,
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
        description: 'Paid for Order #1234',
      ),
      WalletTransactionModel(
        id: 't2',
        amount: 50.0,
        type: TransactionType.credit,
        status: TransactionStatus.completed,
        category: TransactionCategory.cashback,
        createdAt: DateTime.now().subtract(const Duration(days: 2)),
        description: 'Cashback Received',
      ),
    ];
  }

  @override
  Future<List<WalletCashbackModel>> getCashbackHistory() async {
    return [
      WalletCashbackModel(
        id: 'c1',
        amount: 25.0,
        status: CashbackStatus.available,
        earnedAt: DateTime.now().subtract(const Duration(days: 5)),
        expiryDate: DateTime.now().add(const Duration(days: 5)),
        description: 'Dairy Festival Cashback',
      ),
    ];
  }

  @override
  Future<List<RewardPointModel>> getRewardHistory() async => [];

  @override
  Future<void> useWalletBalance(double amount, String orderId) async {}

  @override
  Future<void> claimReward(String rewardId) async {}

  @override
  Future<void> syncWallet() async {}
}
