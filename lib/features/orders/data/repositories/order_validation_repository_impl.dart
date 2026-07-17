import 'package:villishop_customer/features/orders/domain/repositories/order_validation_repository.dart';
import 'package:villishop_customer/features/orders/data/models/order_validation_result.dart';
import 'package:villishop_customer/features/orders/data/models/order_review_model.dart';
import 'package:villishop_customer/features/payment/data/models/payment_method_model.dart';

class OrderValidationRepositoryImpl implements OrderValidationRepository {
  @override
  Future<OrderValidationResult> validateFullOrder({
    required OrderReviewModel orderReview,
    PaymentMethodModel? paymentMethod,
    double? walletBalance,
  }) async {
    // Artificial delay for "Checking your order..." experience
    await Future.delayed(const Duration(milliseconds: 1200));

    // 1. Basic Cart Check
    if (orderReview.cart.shopCarts.isEmpty) {
      return OrderValidationResult.failure(
        code: 'CART_EMPTY',
        title: 'Your cart is empty',
        message:
            'Please add some village fresh items to your cart before proceeding.',
      );
    }

    // 2. Address & Serviceability Check
    if (orderReview.address.id == 'current' &&
        orderReview.address.fullAddress.isEmpty) {
      return OrderValidationResult.failure(
        code: 'ADDRESS_INVALID',
        title: 'Location Required',
        message: 'Please select a valid delivery address.',
        action: 'SELECT_ADDRESS',
      );
    }

    // Simulate Radius Check
    if (orderReview.address.latitude == 0 &&
        orderReview.address.longitude == 0) {
      return OrderValidationResult.failure(
        code: 'NOT_SERVICEABLE',
        title: 'Delivery Not Available',
        message: 'Oh no! We don\'t deliver to this village yet.',
        severity: ValidationSeverity.critical,
      );
    }

    // 3. Shop Status Validation
    for (var shopCart in orderReview.cart.shopCarts) {
      if (!shopCart.isOpen) {
        return OrderValidationResult.failure(
          code: 'SHOP_CLOSED',
          title: '${shopCart.shopName} Closed',
          message:
              'This shop is currently not accepting orders. Please remove items from this shop to continue.',
          action: 'MODIFY_CART',
        );
      }
    }

    // 4. Inventory Check (Simulated)
    for (var shopCart in orderReview.cart.shopCarts) {
      for (var item in shopCart.items) {
        if (item.product.inventory.stockStatus.name == 'outOfStock') {
          return OrderValidationResult.failure(
            code: 'OUT_OF_STOCK',
            title: 'Item Unavailable',
            message:
                '${item.product.name} just went out of stock. Please remove it from your cart.',
            action: 'MODIFY_CART',
          );
        }
      }
    }

    // 5. Payment Validation
    if (paymentMethod != null) {
      if (paymentMethod.type == PaymentType.cod &&
          orderReview.cart.overallSummary.grandTotal > 5000) {
        return OrderValidationResult.failure(
          code: 'COD_LIMIT_EXCEEDED',
          title: 'COD Not Available',
          message: 'Cash on Delivery is unavailable for orders above ₹5000.',
          action: 'CHANGE_PAYMENT',
        );
      }
    }

    // 6. Order Value Validation
    final grandTotal = orderReview.cart.overallSummary.grandTotal;
    if (grandTotal < 99) {
      return OrderValidationResult.failure(
        code: 'MIN_ORDER_VALUE',
        title: 'Minimum Order ₹99',
        message:
            'Please add ₹${(99 - grandTotal).toStringAsFixed(0)} more to place this order.',
        action: 'MODIFY_CART',
      );
    }

    // 7. Fraud Check (Architecture Ready)
    double aiRiskScore = 0.05;
    if (aiRiskScore > 0.8) {
      return OrderValidationResult.failure(
        code: 'FRAUD_DETECTED',
        title: 'Security Alert',
        message: 'Suspicious activity detected. Please contact support.',
        severity: ValidationSeverity.critical,
      );
    }

    return OrderValidationResult.success();
  }

  @override
  Future<OrderValidationResult> validateAddress(String addressId) async =>
      OrderValidationResult.success();

  @override
  Future<OrderValidationResult> validateInventory(
          String shopId, List<String> productIds) async =>
      OrderValidationResult.success();

  @override
  Future<OrderValidationResult> validateShopStatus(String shopId) async =>
      OrderValidationResult.success();

  @override
  Future<OrderValidationResult> validatePaymentRules(
          double orderValue, PaymentMethodModel method) async =>
      OrderValidationResult.success();
}
