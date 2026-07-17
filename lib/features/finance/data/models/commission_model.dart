import 'package:freezed_annotation/freezed_annotation.dart';

part 'commission_model.freezed.dart';
part 'commission_model.g.dart';

@freezed
class CommissionModel with _$CommissionModel {
  const factory CommissionModel({
    @Default(0.0) double platformCommissionPercentage,
    @Default(0.0) double platformFixedCommission,
    @Default(0.0) double platformServiceFee,
    @Default(0.0) double platformConvenienceFee,
    @Default(0.0) double shopCommissionAmount,
    @Default(0.0) double totalPlatformEarnings,

    // AI Ready
    @Default(false) bool isDynamicCommissionApplied,
    @Default(0.0) double aiDynamicAdjustment,
  }) = _CommissionModel;

  factory CommissionModel.fromJson(Map<String, dynamic> json) =>
      _$CommissionModelFromJson(json);
}
