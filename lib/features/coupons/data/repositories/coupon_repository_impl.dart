import '../../domain/repositories/coupon_repository.dart';
import '../models/coupon_model.dart';
import '../models/discount_model.dart';
import '../models/offer_rule_model.dart';

class CouponRepositoryImpl implements CouponRepository {
  @override
  Future<List<CouponModel>> getAvailableCoupons({
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _dummyCoupons;
  }

  @override
  Future<CouponModel?> validateCoupon(String code, {
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    await Future.delayed(const Duration(milliseconds: 400));
    try {
      final coupon = _dummyCoupons.firstWhere((c) => c.code.toUpperCase() == code.toUpperCase());
      
      // Basic validation
      if (cartValue < coupon.rules.minOrderValue) return null;
      
      return coupon;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<CouponModel?> getBestCoupon({
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    final available = await getAvailableCoupons(
      cartValue: cartValue,
      shopIds: shopIds,
      productIds: productIds,
    );
    
    if (available.isEmpty) return null;
    
    // Logic to calculate best discount would go here
    return available.first;
  }

  final List<CouponModel> _dummyCoupons = [
    const CouponModel(
      id: 'cp1',
      code: 'WELCOME50',
      title: 'Flat ₹50 OFF',
      description: 'Get flat ₹50 off on your first village purchase.',
      discount: DiscountModel(type: DiscountType.flat, value: 50),
      rules: OfferRuleModel(minOrderValue: 200, isFirstOrderOnly: true),
      payer: DiscountPayer.platform,
    ),
    const CouponModel(
      id: 'cp2',
      code: 'FREESHIP',
      title: 'Free Delivery',
      description: 'Zero delivery charges for orders above ₹300.',
      discount: DiscountModel(type: DiscountType.freeDelivery, value: 0),
      rules: OfferRuleModel(minOrderValue: 300),
      payer: DiscountPayer.shop,
    ),
    const CouponModel(
      id: 'cp3',
      code: 'VILLAGE20',
      title: '20% Mega Savings',
      description: 'Save 20% up to ₹100 on dairy items.',
      discount: DiscountModel(type: DiscountType.percentage, value: 20),
      rules: OfferRuleModel(
        minOrderValue: 500,
        maxDiscountAmount: 100,
        eligibleCategoryIds: ['dairy'],
      ),
      payer: DiscountPayer.shared,
    ),
  ];
}
