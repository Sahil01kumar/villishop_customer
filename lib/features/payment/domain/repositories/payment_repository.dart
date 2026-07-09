import 'package:villishop_customer/features/payment/data/models/payment_method_model.dart';

abstract class PaymentRepository {
  Future<List<PaymentMethodModel>> loadPaymentMethods({
    required double orderValue,
    required bool isShopCodEnabled,
  });
  
  Future<bool> validateMethod(PaymentMethodModel method);
}
