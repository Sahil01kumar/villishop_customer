import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/coupon_model.dart';

part 'coupon_state.freezed.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState({
    @Default(false) bool isLoading,
    @Default([]) List<CouponModel> availableCoupons,
    CouponModel? appliedCoupon,
    String? errorMessage,
    @Default(false) bool isValidating,
  }) = _CouponState;
}
