import 'package:freezed_annotation/freezed_annotation.dart';

part 'settlement_model.freezed.dart';
part 'settlement_model.g.dart';

enum SettlementStatus { pending, inProgress, completed, failed, partiallyRefunded }

@freezed
class SettlementModel with _$SettlementModel {
  const factory SettlementModel({
    required String id,
    required String referenceId, // Order or Wallet ID
    required double amount,
    required SettlementStatus status,
    required DateTime scheduledDate,
    DateTime? processedDate,
    String? utrNumber,
    String? bankAccountDetails,
    @Default([]) List<String> logs,
  }) = _SettlementModel;

  factory SettlementModel.fromJson(Map<String, dynamic> json) => _$SettlementModelFromJson(json);
}
