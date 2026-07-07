import '../../data/models/offer_model.dart';
import '../../data/models/coupon_model.dart';
import '../../data/models/campaign_model.dart';

abstract class OfferRepository {
  Future<List<OfferModel>> getActiveOffers();
  Future<List<OfferModel>> getFlashSales();
  Future<List<CouponModel>> getAvailableCoupons({double? cartValue, String? shopId});
  Future<List<CampaignModel>> getActiveCampaigns();
  Future<bool> validateCoupon(String code, double cartValue);
  Future<void> saveCoupon(String couponId);
  Future<void> removeCoupon(String couponId);
}
