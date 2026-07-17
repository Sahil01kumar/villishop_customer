import 'dart:async';
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/services/shared_pref_service.dart';
import '../../location/providers/location_provider.dart';
import '../../delivery/providers/delivery_provider.dart';
import '../../payment/providers/payment_provider.dart';
import '../../coupons/providers/coupon_provider.dart';
import '../../orders/providers/order_provider.dart';

part 'checkout_provider.freezed.dart';

enum CheckoutStep { cart, address, delivery, payment, review, success }

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    @Default(CheckoutStep.cart) CheckoutStep currentStep,
    @Default(600) int reservationTimer, // 10 minutes in seconds
    @Default(false) bool isOneTapEligible,
    @Default(false) bool isProcessing,
    @Default(false) bool showOneTapBanner,
  }) = _CheckoutState;
}

class CheckoutNotifier extends StateNotifier<CheckoutState> {
  final Ref _ref;
  Timer? _timer;
  static const String _checkoutCacheKey = 'optimized_checkout_v1';

  CheckoutNotifier(this._ref) : super(const CheckoutState()) {
    _init();
  }

  void _init() {
    _startReservationTimer();
    _restoreCheckoutProgress();

    // Listen for changes in dependencies to update one-tap eligibility
    _ref.listen(locationProvider, (prev, next) => _checkOneTapEligibility());
    _ref.listen(paymentProvider, (prev, next) => _checkOneTapEligibility());
  }

  void _startReservationTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.reservationTimer > 0) {
        state = state.copyWith(reservationTimer: state.reservationTimer - 1);
      } else {
        _timer?.cancel();
      }
    });
  }

  void _checkOneTapEligibility() {
    final locationState = _ref.read(locationProvider);
    final paymentState = _ref.read(paymentProvider);

    final hasAddress = locationState.selectedAddress != null;
    final hasPayment = paymentState.selectedMethod != null;

    final isEligible = hasAddress && hasPayment;
    state = state.copyWith(
      isOneTapEligible: isEligible,
      showOneTapBanner: isEligible && state.currentStep == CheckoutStep.cart,
    );
  }

  Future<void> saveCheckoutProgress() async {
    final prefs = _ref.read(sharedPreferencesServiceProvider);
    final data = {
      'addressId': _ref.read(locationProvider).selectedAddress?.id,
      'paymentMethodId': _ref.read(paymentProvider).selectedMethod?.id,
      'couponCode': _ref.read(couponProvider).appliedCoupon?.code,
      'orderNote': _ref.read(orderReviewProvider).orderNote,
      'deliveryMode': _ref.read(deliveryProvider).deliveryMode.name,
      'timestamp': DateTime.now().toIso8601String(),
    };
    await prefs.setString(_checkoutCacheKey, jsonEncode(data));
  }

  void _restoreCheckoutProgress() {
    final prefs = _ref.read(sharedPreferencesServiceProvider);
    final saved = prefs.getString(_checkoutCacheKey);
    if (saved != null) {
      try {
        jsonDecode(saved);
        // Architecture ready for restoration logic
      } catch (_) {}
    }
  }

  void updateStep(CheckoutStep step) {
    state = state.copyWith(
      currentStep: step,
      showOneTapBanner: state.isOneTapEligible && step == CheckoutStep.cart,
    );
    saveCheckoutProgress();
  }

  void setProcessing(bool processing) {
    state = state.copyWith(isProcessing: processing);
  }

  void closeOneTapBanner() {
    state = state.copyWith(showOneTapBanner: false);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

final checkoutProvider =
    StateNotifierProvider<CheckoutNotifier, CheckoutState>((ref) {
  return CheckoutNotifier(ref);
});

final checkoutTimerProvider = Provider<String>((ref) {
  final seconds = ref.watch(checkoutProvider.select((s) => s.reservationTimer));
  final minutes = (seconds / 60).floor();
  final remainingSeconds = seconds % 60;
  return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
});
