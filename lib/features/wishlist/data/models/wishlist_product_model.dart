import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/data/models/product_model.dart';

part 'wishlist_product_model.freezed.dart';
part 'wishlist_product_model.g.dart';

@freezed
class WishlistProductModel with _$WishlistProductModel {
  const factory WishlistProductModel({
    required ProductModel product,
    required DateTime addedAt,
    @Default(0.0) double aiFavouriteScore,
    @Default(false) bool isSavedForLater,
  }) = _WishlistProductModel;

  factory WishlistProductModel.fromJson(Map<String, dynamic> json) =>
      _$WishlistProductModelFromJson(json);
}
