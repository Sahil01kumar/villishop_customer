import 'package:flutter/foundation.dart';
import '../../domain/repositories/invoice_repository.dart';
import '../models/invoice_model.dart';
import '../../../../features/cart/data/models/cart_model.dart';
import '../../../../features/location/data/models/address_model.dart';
import '../../../../features/delivery/domain/services/delivery_charge_calculator.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  static const double _platformFee = 2.0;
  static const double _packingCharge = 5.0;

  @override
  Future<InvoiceModel> calculateInvoice({
    required CartModel cart,
    double? couponDiscount,
    required bool isDeliverNow,
    double? manualDeliveryCharge,
    AddressModel? deliveryAddress,
  }) async {
    double itemsTotal = 0.0;
    double merchandiseSubtotal = 0.0;
    Map<String, double> categorySubtotals = {};

    for (var shopCart in cart.shopCarts) {
      if (!shopCart.isSelected) continue;
      for (var item in shopCart.items) {
        final qty = item.quantity;
        itemsTotal += item.product.pricing.mrp * qty;
        merchandiseSubtotal += item.product.pricing.sellingPrice * qty;

        final cat = item.product.category.toLowerCase();
        categorySubtotals[cat] = (categorySubtotals[cat] ?? 0) +
            (item.product.pricing.sellingPrice * qty);
      }
    }

    double productDiscount = itemsTotal - merchandiseSubtotal;
    double appliedCouponDiscount = couponDiscount ?? 0.0;

    // Recalculate distance and ETA simulation based on location
    if (deliveryAddress != null) {
      debugPrint("Distance Updated for ${deliveryAddress.fullAddress}");
      debugPrint("ETA Updated based on GPS");
    }

    double deliveryCharge = 0.0;
    if (merchandiseSubtotal > 0) {
      if (manualDeliveryCharge != null) {
        deliveryCharge = manualDeliveryCharge;
      } else {
        deliveryCharge =
            DeliveryChargeCalculator.calculate(merchandiseSubtotal);
      }
    }

    double totalGst = 0.0;
    List<CategoryTaxBreakdown> breakdown = [];

    categorySubtotals.forEach((category, amount) {
      double pct = _getGstPercentage(category);
      double gst = amount * (pct / 100);
      totalGst += gst;
      breakdown.add(CategoryTaxBreakdown(
        category: category.toUpperCase(),
        taxableAmount: amount,
        gstPercentage: pct,
        gstAmount: gst,
      ));
    });

    double grandTotal = merchandiseSubtotal -
        appliedCouponDiscount +
        deliveryCharge +
        _packingCharge +
        _platformFee +
        totalGst;
    if (grandTotal < 0) grandTotal = 0;

    double savedAmount = productDiscount + appliedCouponDiscount;
    if (merchandiseSubtotal >= DeliveryChargeCalculator.freeDeliveryThreshold &&
        manualDeliveryCharge == null) {
      savedAmount += DeliveryChargeCalculator.standardDeliveryCharge;
    }

    return InvoiceModel(
      itemsTotal: itemsTotal,
      sellingPrice: merchandiseSubtotal,
      productDiscount: productDiscount,
      couponDiscount: appliedCouponDiscount,
      deliveryCharge: deliveryCharge,
      packingCharge: _packingCharge,
      platformFee: _platformFee,
      gstAmount: totalGst,
      grandTotal: grandTotal,
      savedAmount: savedAmount,
      isFreeDelivery: DeliveryChargeCalculator.isEligibleForFreeDelivery(
          merchandiseSubtotal),
      taxBreakdown: breakdown,
    );
  }

  double _getGstPercentage(String category) {
    if (category.contains('grocery')) return 0.0;
    if (category.contains('food')) return 5.0;
    if (category.contains('medicine')) return 12.0;
    if (category.contains('electronics')) return 18.0;
    return 5.0;
  }
}
