import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/offer_model.dart';
import '../data/models/coupon_model.dart';
import '../data/models/campaign_model.dart';

part 'offer_state.freezed.dart';

@freezed
class OfferState with _$OfferState {
  const factory OfferState({
    @Default(true) bool isLoading,
    @Default([]) List<OfferModel> offers,
    @Default([]) List<OfferModel> flashSales,
    @Default([]) List<CouponModel> coupons,
    @Default([]) List<CampaignModel> campaigns,
    String? errorMessage,
    String? selectedCouponCode,
    @Default(0.0) double currentCartValue,
  }) = _OfferState;
}
