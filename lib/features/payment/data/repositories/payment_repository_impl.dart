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
      // Recommended UPI
      const PaymentMethodModel(
        id: 'google_pay',
        name: 'Google Pay',
        icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Google_Pay_Logo_%282020%29.svg/2560px-Google_Pay_Logo_%282020%29.svg.png',
        type: PaymentType.upi,
        recommended: true,
        badge: 'Fastest',
      ),
      const PaymentMethodModel(
        id: 'phonepe',
        name: 'PhonePe',
        icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/PhonePe_Logo.svg/2560px-PhonePe_Logo.svg.png',
        type: PaymentType.upi,
        recommended: true,
      ),
      const PaymentMethodModel(
        id: 'paytm',
        name: 'Paytm',
        icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Paytm_Logo.svg/2560px-Paytm_Logo.svg.png',
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
    // Implementation for real-time validation like card expiry check
    return true;
  }
}
