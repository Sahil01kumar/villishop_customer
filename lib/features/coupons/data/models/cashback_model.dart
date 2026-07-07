import 'package:freezed_annotation/freezed_annotation.dart';

part 'cashback_model.freezed.dart';
part 'cashback_model.g.dart';

enum CashbackType { instant, wallet, future }

@freezed
class CashbackModel with _$CashbackModel {
  const factory CashbackModel({
    required CashbackType type,
    required double value,
    @Default(false) bool isPercentage,
    DateTime? expiryDate,
  }) = _CashbackModel;

  factory CashbackModel.fromJson(Map<String, dynamic> json) => _$CashbackModelFromJson(json);
}
