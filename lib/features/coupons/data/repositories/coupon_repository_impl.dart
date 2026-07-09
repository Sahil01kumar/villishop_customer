import '../../domain/repositories/coupon_repository.dart';
import '../models/coupon_model.dart';

class CouponRepositoryImpl implements CouponRepository {
  @override
  Future<List<CouponModel>> getAvailableCoupons({
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _allCoupons.where((c) => c.isActive).toList();
  }

  @override
  Future<CouponModel?> validateCouponCode(String code, {
    required double cartValue,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      return _allCoupons.firstWhere(
        (c) => c.code.toUpperCase() == code.toUpperCase(),
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Future<CouponCalculationResult> calculateDiscount(CouponModel coupon, {
    required double cartValue,
    required double deliveryCharge,
    required List<String> shopIds,
    required List<String> productIds,
  }) async {
    if (cartValue < coupon.minOrderValue) {
      return CouponCalculationResult(
        discountAmount: 0,
        deliveryDiscount: 0,
        cashbackAmount: 0,
        isFreeDelivery: false,
        isValid: false,
        message: 'Add ₹${(coupon.minOrderValue - cartValue).toStringAsFixed(0)} more to use this coupon',
      );
    }

    double discount = 0;
    double deliveryDiscount = 0;
    bool isFreeDelivery = false;

    switch (coupon.type) {
      case CouponType.flat:
        discount = coupon.value;
        break;
      case CouponType.percentage:
        discount = (cartValue * coupon.value) / 100;
        if (discount > coupon.maxDiscountAmount) {
          discount = coupon.maxDiscountAmount;
        }
        break;
      case CouponType.freeDelivery:
        deliveryDiscount = deliveryCharge;
        isFreeDelivery = true;
        break;
      case CouponType.cashback:
        // Handled as potential savings
        break;
      default:
        break;
    }

    return CouponCalculationResult(
      discountAmount: discount,
      deliveryDiscount: deliveryDiscount,
      cashbackAmount: coupon.type == CouponType.cashback ? coupon.value : 0,
      isFreeDelivery: isFreeDelivery,
      isValid: true,
    );
  }

  final List<CouponModel> _allCoupons = [
    CouponModel(
      id: 'c1',
      code: 'WELCOME100',
      title: 'Welcome Gift: Flat ₹100 OFF',
      description: 'Get flat ₹100 off on your first order above ₹499',
      type: CouponType.flat,
      source: CouponSource.platform,
      value: 100,
      minOrderValue: 499,
      expiryDate: DateTime.now().add(const Duration(days: 30)),
      isFirstOrderOnly: true,
    ),
    CouponModel(
      id: 'c2',
      code: 'SAVE50',
      title: 'Save ₹50 on village freshness',
      description: 'Valid on orders above ₹199',
      type: CouponType.flat,
      source: CouponSource.platform,
      value: 50,
      minOrderValue: 199,
      expiryDate: DateTime.now().add(const Duration(days: 15)),
    ),
    CouponModel(
      id: 'c3',
      code: 'SAVE100',
      title: 'Mega Saver: ₹100 OFF',
      description: 'Valid on all orders above ₹799',
      type: CouponType.flat,
      source: CouponSource.platform,
      value: 100,
      minOrderValue: 799,
      expiryDate: DateTime.now().add(const Duration(days: 10)),
    ),
    CouponModel(
      id: 'c4',
      code: 'FIRSTORDER',
      title: '50% OFF on First Order',
      description: 'Get 50% off up to ₹150 on your very first order',
      type: CouponType.percentage,
      source: CouponSource.platform,
      value: 50,
      maxDiscountAmount: 150,
      minOrderValue: 99,
      expiryDate: DateTime.now().add(const Duration(days: 60)),
      isFirstOrderOnly: true,
    ),
    CouponModel(
      id: 'c5',
      code: 'FREEDELIVERY',
      title: 'Free Delivery',
      description: 'No delivery charges on orders above ₹149',
      type: CouponType.freeDelivery,
      source: CouponSource.platform,
      minOrderValue: 149,
      expiryDate: DateTime.now().add(const Duration(days: 7)),
    ),
    CouponModel(
      id: 'c6',
      code: 'FESTIVE100',
      title: 'Festive Delight: ₹100 OFF',
      description: 'Celebrate with ₹100 off on orders above ₹599',
      type: CouponType.flat,
      source: CouponSource.festival,
      value: 100,
      minOrderValue: 599,
      expiryDate: DateTime.now().add(const Duration(days: 45)),
    ),
  ];
}
