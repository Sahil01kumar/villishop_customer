import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

@freezed
class InvoiceModel with _$InvoiceModel {
  const factory InvoiceModel({
    @Default(0.0) double itemsTotal, // Total MRP
    @Default(0.0)
    double sellingPrice, // Total selling price before extra discounts
    @Default(0.0)
    double productDiscount, // Difference between MRP and Selling Price
    @Default(0.0) double couponDiscount,
    @Default(0.0) double deliveryCharge,
    @Default(5.0) double packingCharge,
    @Default(2.0) double platformFee,
    @Default(0.0) double gstAmount,
    @Default(0.0) double grandTotal,
    @Default(0.0) double savedAmount,
    @Default(false) bool isFreeDelivery,
    @Default([]) List<CategoryTaxBreakdown> taxBreakdown,
  }) = _InvoiceModel;

  factory InvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceModelFromJson(json);
}

@freezed
class CategoryTaxBreakdown with _$CategoryTaxBreakdown {
  const factory CategoryTaxBreakdown({
    required String category,
    required double taxableAmount,
    required double gstPercentage,
    required double gstAmount,
  }) = _CategoryTaxBreakdown;

  factory CategoryTaxBreakdown.fromJson(Map<String, dynamic> json) =>
      _$CategoryTaxBreakdownFromJson(json);
}
