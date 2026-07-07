import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:villishop_customer/features/finance/data/models/revenue_model.dart';
import 'package:villishop_customer/features/finance/data/models/finance_summary_model.dart';

part 'finance_state.freezed.dart';

@freezed
class FinanceState with _$FinanceState {
  const factory FinanceState({
    @Default(false) bool isLoading,
    FinanceSummaryModel? summary,
    RevenueModel? currentCalculation,
    String? errorMessage,
  }) = _FinanceState;
}
