import 'package:villishop_customer/features/finance/data/models/revenue_model.dart';
import 'package:villishop_customer/features/finance/data/models/settlement_model.dart';
import 'package:villishop_customer/features/finance/data/models/ledger_model.dart';
import 'package:villishop_customer/features/finance/data/models/finance_summary_model.dart';

abstract class FinanceRepository {
  Future<RevenueModel> calculateOrderRevenue({
    required String orderId,
    required double orderAmount,
    required String shopId,
    double? couponDiscount,
    double? deliveryCharge,
  });

  Future<FinanceSummaryModel> getFinanceSummary();

  Future<List<LedgerModel>> getLedgerEntries({
    required LedgerType type,
    String? referenceId,
  });

  Future<List<SettlementModel>> getPendingSettlements(String shopId);

  // Future AI Architecture
  Future<void> performRevenueForecast();
}
