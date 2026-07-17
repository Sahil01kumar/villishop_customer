import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/wallet_repository.dart';
import '../data/repositories/wallet_repository_impl.dart';
import 'wallet_state.dart';

final walletRepositoryProvider = Provider<WalletRepository>((ref) {
  return WalletRepositoryImpl();
});

class WalletNotifier extends StateNotifier<WalletState> {
  final WalletRepository _repository;

  WalletNotifier(this._repository) : super(const WalletState()) {
    loadWalletData();
  }

  Future<void> loadWalletData() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final wallet = await _repository.getWallet();
      final transactions = await _repository.getTransactionHistory();
      final cashbacks = await _repository.getCashbackHistory();
      final rewards = await _repository.getRewardHistory();

      state = state.copyWith(
        isLoading: false,
        wallet: wallet,
        transactions: transactions,
        cashbacks: cashbacks,
        rewards: rewards,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<bool> useBalance(double amount, String orderId) async {
    state = state.copyWith(isProcessing: true);
    try {
      await _repository.useWalletBalance(amount, orderId);
      await loadWalletData();
      state = state.copyWith(isProcessing: false);
      return true;
    } catch (e) {
      state = state.copyWith(isProcessing: false, errorMessage: e.toString());
      return false;
    }
  }

  Future<void> refresh() => loadWalletData();
}

final walletProvider =
    StateNotifierProvider<WalletNotifier, WalletState>((ref) {
  return WalletNotifier(ref.watch(walletRepositoryProvider));
});
