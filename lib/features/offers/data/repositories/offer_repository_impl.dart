import '../../domain/repositories/offer_repository.dart';
import '../models/offer_model.dart';
import '../models/coupon_model.dart';
import '../models/campaign_model.dart';

class OfferRepositoryImpl implements OfferRepository {
  @override
  Future<List<OfferModel>> getActiveOffers() async {
    await Future.delayed(const Duration(milliseconds: 600));
    return [
      const OfferModel(
        id: 'o1',
        title: 'Flat 50 OFF',
        description: 'Get flat 50 rupees off on your first order.',
        type: OfferType.flat,
        value: 50,
        imageUrl: 'https://via.placeholder.com/300x150',
      ),
      const OfferModel(
        id: 'o2',
        title: '15% Mega Discount',
        description: 'Enjoy 15% discount on all dairy products.',
        type: OfferType.percentage,
        value: 15,
        imageUrl: 'https://via.placeholder.com/300x150',
        categoryId: 'dairy',
      ),
    ];
  }

  @override
  Future<List<OfferModel>> getFlashSales() async {
    return [
      OfferModel(
        id: 'fs1',
        title: 'Midnight Flash Sale',
        description: 'Huge discounts on fresh produce.',
        type: OfferType.percentage,
        value: 40,
        imageUrl: 'https://via.placeholder.com/300x150',
        isFlashSale: true,
        expiryDate: DateTime.now().add(const Duration(hours: 4)),
      ),
    ];
  }

  @override
  Future<List<CouponModel>> getAvailableCoupons({double? cartValue, String? shopId}) async {
    return [
      CouponModel(
        id: 'c1',
        code: 'VILLI20',
        title: '20% Welcome Offer',
        description: 'Maximum discount up to ₹100',
        discountValue: 20,
        isPercentage: true,
        minOrderValue: 200,
        maxDiscountAmount: 100,
        expiryDate: DateTime.now().add(const Duration(days: 30)),
        terms: const ['Valid for new users only', 'Min order ₹200'],
      ),
      CouponModel(
        id: 'c2',
        code: 'FREESHIP',
        title: 'Free Delivery',
        description: 'No delivery charges on orders above ₹500',
        discountValue: 0,
        minOrderValue: 500,
        expiryDate: DateTime.now().add(const Duration(days: 7)),
      ),
    ];
  }

  @override
  Future<List<CampaignModel>> getActiveCampaigns() async {
    return [
      CampaignModel(
        id: 'camp1',
        name: 'Monsoon Sale',
        bannerUrl: 'https://via.placeholder.com/600x300',
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 15)),
        isActive: true,
      ),
    ];
  }

  @override
  Future<bool> validateCoupon(String code, double cartValue) async {
    return code == 'VILLI20' && cartValue >= 200;
  }

  @override
  Future<void> saveCoupon(String couponId) async {}

  @override
  Future<void> removeCoupon(String couponId) async {}
}
