import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/offer_repository.dart';
import '../data/repositories/offer_repository_impl.dart';
import '../data/models/offer_model.dart';
import '../data/models/coupon_model.dart';
import '../data/models/campaign_model.dart';
import 'offer_state.dart';

final offerRepositoryProvider = Provider<OfferRepository>((ref) {
  return OfferRepositoryImpl();
});

class OfferNotifier extends StateNotifier<OfferState> {
  final OfferRepository _repository;

  OfferNotifier(this._repository) : super(const OfferState()) {
    init();
  }

  Future<void> init() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final results = await Future.wait([
        _repository.getActiveOffers(),
        _repository.getFlashSales(),
        _repository.getAvailableCoupons(),
        _repository.getActiveCampaigns(),
      ]);

      state = state.copyWith(
        isLoading: false,
        offers: (results[0] as List).cast<OfferModel>(),
        flashSales: (results[1] as List).cast<OfferModel>(),
        coupons: (results[2] as List).cast<CouponModel>(),
        campaigns: (results[3] as List).cast<CampaignModel>(),
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> refresh() => init();

  Future<bool> applyCoupon(String code, double cartValue) async {
    final isValid = await _repository.validateCoupon(code, cartValue);
    if (isValid) {
      state = state.copyWith(selectedCouponCode: code);
      return true;
    }
    return false;
  }

  void removeCoupon() {
    state = state.copyWith(selectedCouponCode: null);
  }
}

final offerProvider = StateNotifierProvider<OfferNotifier, OfferState>((ref) {
  return OfferNotifier(ref.watch(offerRepositoryProvider));
});
