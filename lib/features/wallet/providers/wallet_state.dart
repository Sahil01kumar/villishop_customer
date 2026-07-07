import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/wallet_model.dart';
import '../data/models/wallet_transaction_model.dart';
import '../data/models/wallet_cashback_model.dart';
import '../data/models/reward_point_model.dart';

part 'wallet_state.freezed.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    @Default(false) bool isLoading,
    WalletModel? wallet,
    @Default([]) List<WalletTransactionModel> transactions,
    @Default([]) List<WalletCashbackModel> cashbacks,
    @Default([]) List<RewardPointModel> rewards,
    String? errorMessage,
    @Default(false) bool isProcessing,
  }) = _WalletState;
}
