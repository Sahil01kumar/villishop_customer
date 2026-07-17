import 'package:freezed_annotation/freezed_annotation.dart';
import 'commission_model.dart';
import 'tax_model.dart';

part 'revenue_model.freezed.dart';
part 'revenue_model.g.dart';

@freezed
class RevenueModel with _$RevenueModel {
  const factory RevenueModel({
    required String id,
    required double grossSellingAmount,
    @Default(0.0) double netRevenue,
    @Default(0.0) double shopSettlementAmount,
    @Default(0.0) double deliveryPartnerEarnings,
    @Default(0.0) double platformProfit,
    required CommissionModel commission,
    required TaxModel tax,

    // Split Revenue Details
    @Default(0.0) double paymentGatewayCharges,
    @Default(0.0) double couponDiscountCost, // Platform vs Shop share
    @Default(0.0) double cashbackCost,

    // Margins
    @Default(0.0) double grossMarginPercentage,
    @Default(0.0) double netMarginPercentage,
    required DateTime createdAt,
  }) = _RevenueModel;

  factory RevenueModel.fromJson(Map<String, dynamic> json) =>
      _$RevenueModelFromJson(json);
}
