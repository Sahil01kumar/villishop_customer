import 'package:freezed_annotation/freezed_annotation.dart';
import 'wishlist_product_model.dart';

part 'wishlist_collection_model.freezed.dart';
part 'wishlist_collection_model.g.dart';

@freezed
class WishlistCollectionModel with _$WishlistCollectionModel {
  const factory WishlistCollectionModel({
    required String id,
    required String name,
    @Default([]) List<WishlistProductModel> items,
    required DateTime createdAt,
    String? description,
  }) = _WishlistCollectionModel;

  factory WishlistCollectionModel.fromJson(Map<String, dynamic> json) => _$WishlistCollectionModelFromJson(json);
}
