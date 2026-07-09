import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/coupon_repository.dart';
import '../data/repositories/coupon_repository_impl.dart';
import '../data/models/coupon_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_provider.freezed.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState({
    @Default(false) bool isLoading,
    @Default([]) List<CouponModel> availableCoupons,
    CouponModel? appliedCoupon,
    CouponCalculationResult? calculation,
    String? errorMessage,
    @Default(false) bool isValidating,
  }) = _CouponState;
}

final couponRepositoryProvider = Provider<CouponRepository>((ref) {
  return CouponRepositoryImpl();
});

class CouponNotifier extends StateNotifier<CouponState> {
  final CouponRepository _repository;

  CouponNotifier(this._repository) : super(const CouponState());

  Future<void> fetchCoupons({
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

  Future<bool> applyCouponCode(String code, {
    required double cartValue,
    required double deliveryCharge,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    state = state.copyWith(isValidating: true, errorMessage: null);
    final coupon = await _repository.validateCouponCode(
      code,
      cartValue: cartValue,
      shopIds: shopIds,
      productIds: productIds,
    );

    if (coupon == null) {
      state = state.copyWith(
        isValidating: false,
        errorMessage: 'Invalid coupon code',
      );
      return false;
    }

    return applyCoupon(
      coupon,
      cartValue: cartValue,
      deliveryCharge: deliveryCharge,
      shopIds: shopIds,
      productIds: productIds,
    );
  }

  Future<bool> applyCoupon(CouponModel coupon, {
    required double cartValue,
    required double deliveryCharge,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    state = state.copyWith(isValidating: true, errorMessage: null);
    final result = await _repository.calculateDiscount(
      coupon,
      cartValue: cartValue,
      deliveryCharge: deliveryCharge,
      shopIds: shopIds,
      productIds: productIds,
    );

    if (!result.isValid) {
      state = state.copyWith(
        isValidating: false,
        errorMessage: result.message ?? 'Coupon not applicable',
      );
      return false;
    }

    state = state.copyWith(
      isValidating: false,
      appliedCoupon: coupon,
      calculation: result,
      errorMessage: null,
    );
    return true;
  }

  void removeCoupon() {
    state = state.copyWith(
      appliedCoupon: null,
      calculation: null,
      errorMessage: null,
    );
  }
}

final couponProvider = StateNotifierProvider<CouponNotifier, CouponState>((ref) {
  return CouponNotifier(ref.watch(couponRepositoryProvider));
});
