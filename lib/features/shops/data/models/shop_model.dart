import 'package:freezed_annotation/freezed_annotation.dart';

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
    @Default(true) bool isOpen,
    @Default('0') String deliveryCharge,
    @Default([]) List<String> offers,
    @Default([]) List<String> tags,
    @Default(true) bool isVeg,
    @Default(false) bool isFavourite,
    String? logoUrl,
    String? description,
    @Default(0) int totalReviews,
    @Default('8:00 AM - 10:00 PM') String storeTiming,
    String? address,
    @Default([]) List<String> policies,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) => _$ShopModelFromJson(json);
}
