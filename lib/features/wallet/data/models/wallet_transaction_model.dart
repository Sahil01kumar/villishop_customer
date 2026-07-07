import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_transaction_model.freezed.dart';
part 'wallet_transaction_model.g.dart';

enum TransactionType { credit, debit }
enum TransactionStatus { pending, completed, failed, refunded }
enum TransactionCategory { order, cashback, refund, referral, signup, manual }

@freezed
class WalletTransactionModel with _$WalletTransactionModel {
  const factory WalletTransactionModel({
    required String id,
    required double amount,
    required TransactionType type,
    required TransactionStatus status,
    required TransactionCategory category,
    required DateTime createdAt,
    String? referenceId, // Order ID or Cashback ID
    String? description,
    @Default(0.0) double balanceAfter,
    
    // Revenue Ready Fields
    String? shopId,
    @Default(0.0) double platformCommission,
    @Default(0.0) double shopEarnings,
  }) = _WalletTransactionModel;

  factory WalletTransactionModel.fromJson(Map<String, dynamic> json) => _$WalletTransactionModelFromJson(json);
}
