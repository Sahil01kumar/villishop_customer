import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_model.freezed.dart';
part 'ledger_model.g.dart';

enum LedgerType { platform, shop, customer, delivery, finance }
enum EntryType { credit, debit }

@freezed
class LedgerModel with _$LedgerModel {
  const factory LedgerModel({
    required String id,
    required LedgerType type,
    required EntryType entryType,
    required double amount,
    required String description,
    required String referenceId,
    required DateTime createdAt,
    @Default(0.0) double balanceAfter,
    String? metadata, // Extra info like payment method
  }) = _LedgerModel;

  factory LedgerModel.fromJson(Map<String, dynamic> json) => _$LedgerModelFromJson(json);
}
