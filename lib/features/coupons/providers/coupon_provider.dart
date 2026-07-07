import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/coupon_repository.dart';
import '../data/repositories/coupon_repository_impl.dart';
import 'coupon_state.dart';

final couponRepositoryProvider = Provider<CouponRepository>((ref) {
  return CouponRepositoryImpl();
});

class CouponNotifier extends StateNotifier<CouponState> {
  final CouponRepository _repository;

  CouponNotifier(this._repository) : super(const CouponState());

  Future<void> loadCoupons({
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final coupons = await _repository.getAvailableCoupons(
        cartValue: cartValue,
        shopIds: shopIds,
        productIds: productIds,
      );
      state = state.copyWith(isLoading: false, availableCoupons: coupons);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<bool> applyCoupon(String code, {
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    state = state.copyWith(isValidating: true, errorMessage: null);
    final coupon = await _repository.validateCoupon(
      code,
      cartValue: cartValue,
      shopIds: shopIds,
      productIds: productIds,
    );

    if (coupon != null) {
      state = state.copyWith(isValidating: false, appliedCoupon: coupon);
      return true;
    } else {
      state = state.copyWith(
        isValidating: false,
        errorMessage: 'Invalid coupon code or minimum order not met',
      );
      return false;
    }
  }

  void removeCoupon() {
    state = state.copyWith(appliedCoupon: null);
  }

  Future<void> autoApplyBest({
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    final best = await _repository.getBestCoupon(
      cartValue: cartValue,
      shopIds: shopIds,
      productIds: productIds,
    );
    if (best != null) {
      state = state.copyWith(appliedCoupon: best);
    }
  }
}

final couponProvider = StateNotifierProvider<CouponNotifier, CouponState>((ref) {
  return CouponNotifier(ref.watch(couponRepositoryProvider));
});
