import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

enum StockStatus { inStock, lowStock, outOfStock }

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String name,
    required double price,
    required double originalPrice,
    required String weight,
    required String imageUrl,
    @Default(0) int discountPercentage,
    @Default(0.0) double rating,
    String? brand,
    String? description,
    String? unit, // e.g. kg, ltr, gm, packet
    @Default(StockStatus.inStock) StockStatus stockStatus,
    @Default(false) bool isVeg,
    @Default(false) bool isBestseller,
    @Default(false) bool isNewArrival,
    @Default(false) bool isLimitedOffer,
    String? expiryDate,
    @Default([]) List<String> categories,
    @Default(0) int quantityInCart,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
