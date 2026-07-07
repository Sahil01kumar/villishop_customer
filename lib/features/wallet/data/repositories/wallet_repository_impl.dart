import '../../domain/repositories/wallet_repository.dart';
import '../models/wallet_model.dart';
import '../models/wallet_transaction_model.dart';
import '../models/wallet_cashback_model.dart';
import '../models/reward_point_model.dart';

class WalletRepositoryImpl implements WalletRepository {
  @override
  Future<WalletModel> getWallet() async {
    await Future.delayed(const Duration(milliseconds: 600));
    return WalletModel(
      id: 'w1',
      userId: 'u1',
      balance: 450.0,
      pendingCashback: 50.0,
      loyaltyPoints: 1200,
      recentTransactions: _dummyTransactions,
      activeCashbacks: _dummyCashbacks,
    );
  }

  @override
  Future<List<WalletTransactionModel>> getTransactionHistory({int page = 1, int limit = 20}) async {
    return _dummyTransactions;
  }

  @override
  Future<List<WalletCashbackModel>> getCashbackHistory() async {
    return _dummyCashbacks;
  }

  @override
  Future<List<RewardPointModel>> getRewardHistory() async {
    return [
      RewardPointModel(
        id: 'r1',
        points: 500,
        source: RewardSource.signup,
        earnedAt: DateTime.now().subtract(const Duration(days: 10)),
        description: 'Welcome Bonus',
      ),
      RewardPointModel(
        id: 'r2',
        points: 200,
        source: RewardSource.referral,
        earnedAt: DateTime.now().subtract(const Duration(days: 5)),
        description: 'Referred Rahul',
      ),
    ];
  }

  @override
  Future<void> useWalletBalance(double amount, String orderId) async {
    await Future.delayed(const Duration(milliseconds: 800));
  }

  @override
  Future<void> claimReward(String rewardId) async {}

  @override
  Future<void> syncWallet() async {}

  final List<WalletTransactionModel> _dummyTransactions = [
    WalletTransactionModel(
      id: 't1',
      amount: 150.0,
      type: TransactionType.debit,
      status: TransactionStatus.completed,
      category: TransactionCategory.order,
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      description: 'Paid for Order #ORD123',
      balanceAfter: 450.0,
    ),
    WalletTransactionModel(
      id: 't2',
      amount: 50.0,
      type: TransactionType.credit,
      status: TransactionStatus.completed,
      category: TransactionCategory.cashback,
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      description: 'Cashback for Order #ORD120',
      balanceAfter: 600.0,
    ),
    WalletTransactionModel(
      id: 't3',
      amount: 1000.0,
      type: TransactionType.credit,
      status: TransactionStatus.completed,
      category: TransactionCategory.manual,
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
      description: 'Added money to wallet',
      balanceAfter: 550.0,
    ),
  ];

  final List<WalletCashbackModel> _dummyCashbacks = [
    WalletCashbackModel(
      id: 'cb1',
      amount: 50.0,
      status: CashbackStatus.pending,
      earnedAt: DateTime.now().subtract(const Duration(hours: 2)),
      availableAt: DateTime.now().add(const Duration(days: 1)),
      description: 'Order #ORD123 Cashback',
    ),
    WalletCashbackModel(
      id: 'cb2',
      amount: 25.0,
      status: CashbackStatus.available,
      earnedAt: DateTime.now().subtract(const Duration(days: 3)),
      description: 'Referral Bonus',
    ),
  ];
}
