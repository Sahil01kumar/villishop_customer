import 'package:villishop_customer/features/orders/data/models/order_validation_result.dart';
import 'package:villishop_customer/features/orders/data/models/order_review_model.dart';
import 'package:villishop_customer/features/payment/data/models/payment_method_model.dart';

abstract class OrderValidationRepository {
  Future<OrderValidationResult> validateFullOrder({
    required OrderReviewModel orderReview,
    PaymentMethodModel? paymentMethod,
    double? walletBalance,
  });

  Future<OrderValidationResult> validateAddress(String addressId);
  Future<OrderValidationResult> validateInventory(
      String shopId, List<String> productIds);
  Future<OrderValidationResult> validateShopStatus(String shopId);
  Future<OrderValidationResult> validatePaymentRules(
      double orderValue, PaymentMethodModel method);
}
