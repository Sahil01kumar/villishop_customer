import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_model.freezed.dart';
part 'offer_model.g.dart';

enum OfferType {
  flat,
  percentage,
  bogo,
  combo,
  cashback,
  freeDelivery,
  freeGift
}

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel({
    required String id,
    required String title,
    required String description,
    required OfferType type,
    required double value, // discount value or percentage
    required String imageUrl,
    String? shopId,
    String? brandId,
    String? categoryId,
    DateTime? expiryDate,
    @Default(false) bool isFlashSale,
    @Default(false) bool isTrending,
    @Default(0.0) double aiRelevanceScore,
    @Default([]) List<String> termsAndConditions,
  }) = _OfferModel;

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);
}
