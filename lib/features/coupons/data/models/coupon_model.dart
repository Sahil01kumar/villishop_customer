import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_model.freezed.dart';
part 'coupon_model.g.dart';

enum CouponType { flat, percentage, freeDelivery, bogo, buyXGetY, cashback }

enum CouponSource { platform, shop, brand, referral, festival }

@freezed
class CouponModel with _$CouponModel {
  const factory CouponModel({
    required String id,
    required String code,
    required String title,
    required String description,
    required CouponType type,
    required CouponSource source,
    @Default(0.0) double value,
    @Default(0.0) double minOrderValue,
    @Default(double.infinity) double maxDiscountAmount,
    required DateTime expiryDate,
    @Default(1) int usageLimitPerCustomer,
    @Default(true) bool isActive,
    String? shopId,
    @Default([]) List<String> eligibleCategoryIds,
    @Default([]) List<String> eligibleProductIds,
    @Default(false) bool isFirstOrderOnly,
    @Default(false) bool isMembershipOnly,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);
}

@freezed
class CouponCalculationResult with _$CouponCalculationResult {
  const factory CouponCalculationResult({
    required double discountAmount,
    required double deliveryDiscount,
    required double cashbackAmount,
    required bool isFreeDelivery,
    String? message,
    @Default(true) bool isValid,
  }) = _CouponCalculationResult;
}
