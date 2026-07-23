import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/services/payment_service.dart';
import '../../authentication/providers/auth_provider.dart';
import '../../finance/providers/finance_providers.dart';
import '../data/models/payment_method_model.dart';

part 'payment_provider.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(false) bool isLoading,
    @Default([]) List<PaymentMethodModel> methods,
    PaymentMethodModel? selectedMethod,
    @Default(false) bool useWallet,
    @Default(0.0) double walletBalance,
    @Default(0.0) double cashbackBalance,
    String? errorMessage,
  }) = _PaymentState;
}

class PaymentNotifier extends StateNotifier<PaymentState> {
  final PaymentService _service;
  final Ref _ref;

  PaymentNotifier(this._service, this._ref) : super(const PaymentState()) {
    loadMethods();
  }

  Future<void> loadMethods() async {
    state = state.copyWith(isLoading: true);
    // In production, fetch from API
    await Future.delayed(const Duration(milliseconds: 500));
    final mockMethods = [
      const PaymentMethodModel(
          id: '1', name: 'Google Pay', icon: '', type: PaymentType.upi),
      const PaymentMethodModel(
          id: '2', name: 'Credit/Debit Card', icon: '', type: PaymentType.card),
      const PaymentMethodModel(
          id: '3', name: 'Cash on Delivery', icon: '', type: PaymentType.cod),
    ];
    state = state.copyWith(isLoading: false, methods: mockMethods);
  }

  void selectMethod(PaymentMethodModel method) {
    state = state.copyWith(selectedMethod: method);
  }

  void toggleUseWallet(bool value) {
    state = state.copyWith(useWallet: value);
  }

  double get remainingAmount {
    final invoice = _ref.watch(invoiceProvider).value;
    if (invoice == null) return 0.0;

    if (!state.useWallet) return invoice.grandTotal;

    final balance = state.walletBalance + state.cashbackBalance;
    return (invoice.grandTotal - balance).clamp(0.0, double.infinity);
  }

  double get walletDeduction {
    if (!state.useWallet) return 0.0;
    final invoice = _ref.watch(invoiceProvider).value;
    if (invoice == null) return 0.0;

    final balance = state.walletBalance + state.cashbackBalance;
    return invoice.grandTotal > balance ? balance : invoice.grandTotal;
  }

  Future<PaymentResponse> processPayment({
    required double amount,
    required String orderId,
  }) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    final user = _ref
        .read(authProvider)
        .maybeWhen(authenticated: (u) => u, orElse: () => null);

    try {
      final response = await _service.initiatePayment(
        amount: amount,
        orderId: orderId,
        customerName: user?.name ?? 'Customer',
        customerPhone: user?.phoneNumber ?? '',
        customerEmail: user?.email ?? '',
      );
      state = state.copyWith(isLoading: false);
      return response;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return PaymentResponse(
          status: PaymentStatus.failed, errorMessage: e.toString());
    }
  }
}

final paymentProvider =
    StateNotifierProvider<PaymentNotifier, PaymentState>((ref) {
  return PaymentNotifier(ref.watch(paymentServiceProvider), ref);
});

final payableAmountProvider = Provider<double>((ref) {
  final invoiceAsync = ref.watch(invoiceProvider);

  return invoiceAsync.maybeWhen(
    data: (invoice) {
      final paymentState = ref.watch(paymentProvider);
      if (!paymentState.useWallet) return invoice.grandTotal;

      final balance = paymentState.walletBalance + paymentState.cashbackBalance;
      return (invoice.grandTotal - balance).clamp(0.0, double.infinity);
    },
    orElse: () => 0.0,
  );
});

final walletDeductionProvider = Provider<double>((ref) {
  final invoiceAsync = ref.watch(invoiceProvider);

  return invoiceAsync.maybeWhen(
    data: (invoice) {
      final paymentState = ref.watch(paymentProvider);
      if (!paymentState.useWallet) return 0.0;

      final balance = paymentState.walletBalance + paymentState.cashbackBalance;
      return invoice.grandTotal > balance ? balance : invoice.grandTotal;
    },
    orElse: () => 0.0,
  );
});
