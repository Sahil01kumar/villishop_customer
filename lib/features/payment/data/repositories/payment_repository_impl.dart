import '../../domain/repositories/payment_repository.dart';
import '../models/payment_method_model.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  @override
  Future<List<PaymentMethodModel>> loadPaymentMethods({
    required double orderValue,
    required bool isShopCodEnabled,
  }) async {
    // Simulate API call
    await Future.delayed(const Duration(milliseconds: 500));

    final List<PaymentMethodModel> methods = [
      // Recommended UPI - Using Local Assets for Production Stability
      const PaymentMethodModel(
        id: 'google_pay',
        name: 'Google Pay',
        icon: 'assets/images/payment/google_pay.png',
        type: PaymentType.upi,
        recommended: true,
        badge: 'Fastest',
      ),
      const PaymentMethodModel(
        id: 'phonepe',
        name: 'PhonePe',
        icon: 'assets/images/payment/phonepe.png',
        type: PaymentType.upi,
        recommended: true,
      ),
      const PaymentMethodModel(
        id: 'paytm',
        name: 'Paytm',
        icon: 'assets/images/payment/paytm.png',
        type: PaymentType.upi,
      ),

      // Cards
      const PaymentMethodModel(
        id: 'new_card',
        name: 'Add New Credit/Debit Card',
        icon: '💳',
        type: PaymentType.card,
        supportsSplitPayment: false,
      ),

      // Wallet
      const PaymentMethodModel(
        id: 'village_wallet',
        name: 'Village Wallet',
        icon: '👛',
        type: PaymentType.wallet,
        badge: 'Extra 5% Cashback',
      ),

      // Net Banking
      const PaymentMethodModel(
        id: 'net_banking',
        name: 'Net Banking',
        icon: '🏦',
        type: PaymentType.netbanking,
      ),
    ];

    // Cash on Delivery with rules
    bool codAvailable = isShopCodEnabled && orderValue <= 5000;
    String? codReason;
    if (!isShopCodEnabled) {
      codReason = 'Shop has disabled COD';
    } else if (orderValue > 5000) {
      codReason = 'COD unavailable for orders above ₹5000';
    }

    methods.add(PaymentMethodModel(
      id: 'cod',
      name: 'Cash on Delivery (COD)',
      icon: '💵',
      type: PaymentType.cod,
      enabled: codAvailable,
      unavailableReason: codReason,
    ));

    return methods;
  }

  @override
  Future<bool> validateMethod(PaymentMethodModel method) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return true;
  }
}
