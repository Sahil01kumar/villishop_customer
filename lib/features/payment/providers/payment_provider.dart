import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/payment_method_model.dart';
import '../domain/repositories/payment_repository.dart';
import '../data/repositories/payment_repository_impl.dart';
import '../../cart/providers/cart_provider.dart';

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

final paymentRepositoryProvider = Provider<PaymentRepository>((ref) {
  return PaymentRepositoryImpl();
});

class PaymentNotifier extends StateNotifier<PaymentState> {
  final PaymentRepository _repository;
  final Ref _ref;

  PaymentNotifier(this._repository, this._ref) : super(const PaymentState()) {
    _init();
  }

  Future<void> _init() async {
    state = state.copyWith(
      walletBalance: 150.0,
      cashbackBalance: 45.0,
    );
    await loadMethods();
  }

  Future<void> loadMethods() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final cart = _ref.read(cartProvider).cart;
      final double orderValue = cart.overallSummary.grandTotal;
      
      bool allShopsCod = cart.shopCarts.every((s) => s.isOpen);

      final methods = await _repository.loadPaymentMethods(
        orderValue: orderValue,
        isShopCodEnabled: allShopsCod,
      );
      
      final enabledMethods = methods.where((m) => m.enabled).toList();

      state = state.copyWith(
        isLoading: false,
        methods: methods,
        selectedMethod: enabledMethods.isNotEmpty 
            ? enabledMethods.firstWhere((m) => m.recommended, orElse: () => enabledMethods.first)
            : null,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void selectMethod(PaymentMethodModel method) {
    if (!method.enabled) return;
    state = state.copyWith(selectedMethod: method);
  }

  void toggleUseWallet(bool value) {
    state = state.copyWith(useWallet: value);
  }

  double get walletDeduction {
    if (!state.useWallet) return 0.0;
    final cart = _ref.read(cartProvider).cart;
    final total = cart.overallSummary.grandTotal;
    final available = state.walletBalance + state.cashbackBalance;
    return total < available ? total : available;
  }

  double get remainingAmount {
    final cart = _ref.read(cartProvider).cart;
    return cart.overallSummary.grandTotal - walletDeduction;
  }
}

final paymentProvider = StateNotifierProvider<PaymentNotifier, PaymentState>((ref) {
  return PaymentNotifier(ref.watch(paymentRepositoryProvider), ref);
});
