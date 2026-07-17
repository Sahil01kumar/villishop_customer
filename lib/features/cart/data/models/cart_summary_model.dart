import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_summary_model.freezed.dart';
part 'cart_summary_model.g.dart';

@freezed
class CartSummaryModel with _$CartSummaryModel {
  const factory CartSummaryModel({
    @Default(0.0) double subTotal,
    @Default(0.0) double totalDiscount,
    @Default(0.0) double deliveryCharge,
    @Default(0.0) double packagingCharge,
    @Default(0.0) double convenienceFee,
    @Default(0.0) double platformFee,
    @Default(0.0) double totalTax,
    @Default(0.0) double gstAmount,
    @Default(0.0) double surgePricing,
    @Default(0.0) double walletDiscount,
    @Default(0.0) double couponDiscount,
    @Default(0.0) double cashbackAmount,
    @Default(0.0) double grandTotal,
    @Default(0) int totalItems,
    @Default(0) int totalQuantity,

    // Settlement Architecture Ready
    @Default(0.0) double shopSettlementAmount,
    @Default(0.0) double platformEarnings,
    @Default(0.0) double deliveryPartnerEarnings,
  }) = _CartSummaryModel;

  factory CartSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CartSummaryModelFromJson(json);
}
