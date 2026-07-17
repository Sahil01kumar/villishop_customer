import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_summary_model.freezed.dart';
part 'finance_summary_model.g.dart';

@freezed
class FinanceSummaryModel with _$FinanceSummaryModel {
  const factory FinanceSummaryModel({
    @Default(0.0) double dailyRevenue,
    @Default(0.0) double weeklyRevenue,
    @Default(0.0) double monthlyRevenue,
    @Default(0.0) double yearlyRevenue,
    @Default(0.0) double totalCommissionEarned,
    @Default(0.0) double totalNetProfit,

    // Top Performers
    @Default([]) List<String> topSellingShopIds,
    @Default([]) List<String> topSellingProductIds,

    // AI Forecast Ready
    @Default(0.0) double aiProjectedProfit,
    @Default(0.0) double aiDemandPredictionIndex,
  }) = _FinanceSummaryModel;

  factory FinanceSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$FinanceSummaryModelFromJson(json);
}
