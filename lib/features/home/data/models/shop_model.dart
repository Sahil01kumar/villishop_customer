import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../offers/data/models/offer_model.dart';

part 'shop_model.freezed.dart';
part 'shop_model.g.dart';

@freezed
class ShopModel with _$ShopModel {
  const factory ShopModel({
    required String id,
    required String name,
    required String category,
    required double rating,
    required String deliveryTime,
    required String imageUrl,
    required String distance,
    required String minOrder,
    @Default(0) int totalReviews,
    String? description,
    String? storeTiming,
    String? address,
    @Default(false) bool isFavourite,
    @Default([]) List<OfferModel> offers,
    @Default([]) List<String> policies,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) =>
      _$ShopModelFromJson(json);
}
