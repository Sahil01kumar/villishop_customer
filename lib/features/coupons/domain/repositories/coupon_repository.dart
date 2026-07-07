import 'package:villishop_customer/features/coupons/data/models/coupon_model.dart';

abstract class CouponRepository {
  Future<List<CouponModel>> getAvailableCoupons({
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  });

  Future<CouponModel?> validateCoupon(String code, {
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  });

  Future<CouponModel?> getBestCoupon({
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  });
}
