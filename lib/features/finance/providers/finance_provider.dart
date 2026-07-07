import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/finance/domain/repositories/finance_repository.dart';
import 'package:villishop_customer/features/finance/data/repositories/finance_repository_impl.dart';
import 'finance_state.dart';

final financeRepositoryProvider = Provider<FinanceRepository>((ref) {
  return FinanceRepositoryImpl();
});

class FinanceNotifier extends StateNotifier<FinanceState> {
  final FinanceRepository _repository;

  FinanceNotifier(this._repository) : super(const FinanceState()) {
    loadSummary();
  }

  Future<void> loadSummary() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final summary = await _repository.getFinanceSummary();
      state = state.copyWith(isLoading: false, summary: summary);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> calculateOrderRevenue({
    required String orderId,
    required double orderAmount,
    required String shopId,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      final rev = await _repository.calculateOrderRevenue(
        orderId: orderId,
        orderAmount: orderAmount,
        shopId: shopId,
      );
      state = state.copyWith(isLoading: false, currentCalculation: rev);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }
}

final financeProvider = StateNotifierProvider<FinanceNotifier, FinanceState>((ref) {
  return FinanceNotifier(ref.watch(financeRepositoryProvider));
});
