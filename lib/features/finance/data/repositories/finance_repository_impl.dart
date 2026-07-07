import 'package:villishop_customer/features/finance/domain/repositories/finance_repository.dart';
import 'package:villishop_customer/features/finance/data/models/revenue_model.dart';
import 'package:villishop_customer/features/finance/data/models/settlement_model.dart';
import 'package:villishop_customer/features/finance/data/models/ledger_model.dart';
import 'package:villishop_customer/features/finance/data/models/finance_summary_model.dart';
import 'package:villishop_customer/features/finance/data/models/commission_model.dart';
import 'package:villishop_customer/features/finance/data/models/tax_model.dart';

class FinanceRepositoryImpl implements FinanceRepository {
  @override
  Future<RevenueModel> calculateOrderRevenue({
    required String orderId,
    required double orderAmount,
    required String shopId,
    double? couponDiscount,
    double? deliveryCharge,
  }) async {
    const platformCommPercent = 10.0;
    const fixedFee = 5.0;
    const serviceFee = 2.0;

    final commAmount = (orderAmount * platformCommPercent) / 100;
    final totalPlatformEarnings = commAmount + fixedFee + serviceFee;
    
    final gstTotal = orderAmount * 0.05;
    final cgst = gstTotal / 2;
    final sgst = gstTotal / 2;

    final shopEarnings = orderAmount - commAmount - fixedFee - (couponDiscount ?? 0.0);

    return RevenueModel(
      id: 'rev_$orderId',
      grossSellingAmount: orderAmount,
      netRevenue: orderAmount + (deliveryCharge ?? 0.0),
      shopSettlementAmount: shopEarnings,
      platformProfit: totalPlatformEarnings,
      createdAt: DateTime.now(),
      commission: CommissionModel(
        platformCommissionPercentage: platformCommPercent,
        platformFixedCommission: fixedFee,
        platformServiceFee: serviceFee,
        shopCommissionAmount: commAmount,
        totalPlatformEarnings: totalPlatformEarnings,
      ),
      tax: TaxModel(
        cgst: cgst,
        sgst: sgst,
        totalTax: gstTotal,
        gstPercentage: 5.0,
      ),
    );
  }

  @override
  Future<FinanceSummaryModel> getFinanceSummary() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return const FinanceSummaryModel(
      dailyRevenue: 15000.0,
      weeklyRevenue: 95000.0,
      monthlyRevenue: 380000.0,
      totalNetProfit: 45000.0,
    );
  }

  @override
  Future<List<LedgerModel>> getLedgerEntries({
    required LedgerType type,
    String? referenceId,
  }) async {
    return [];
  }

  @override
  Future<List<SettlementModel>> getPendingSettlements(String shopId) async {
    return [];
  }

  @override
  Future<void> performRevenueForecast() async {}
}
