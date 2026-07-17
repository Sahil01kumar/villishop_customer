import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_cashback_model.freezed.dart';
part 'wallet_cashback_model.g.dart';

enum CashbackStatus { pending, available, expired, used }

@freezed
class WalletCashbackModel with _$WalletCashbackModel {
  const factory WalletCashbackModel({
    required String id,
    required double amount,
    required CashbackStatus status,
    required DateTime earnedAt,
    DateTime? availableAt,
    DateTime? expiryDate,
    String? orderId,
    String? description,
  }) = _WalletCashbackModel;

  factory WalletCashbackModel.fromJson(Map<String, dynamic> json) =>
      _$WalletCashbackModelFromJson(json);
}
