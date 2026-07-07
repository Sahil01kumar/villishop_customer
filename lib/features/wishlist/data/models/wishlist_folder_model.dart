import 'package:freezed_annotation/freezed_annotation.dart';
import 'wishlist_product_model.dart';

part 'wishlist_folder_model.freezed.dart';
part 'wishlist_folder_model.g.dart';

@freezed
class WishlistFolderModel with _$WishlistFolderModel {
  const factory WishlistFolderModel({
    required String id,
    required String name,
    required String icon, // Emoji or URL
    @Default([]) List<WishlistProductModel> items,
    required DateTime createdAt,
    String? description,
    @Default(false) bool isSystemFolder, // e.g. "Monthly List"
  }) = _WishlistFolderModel;

  factory WishlistFolderModel.fromJson(Map<String, dynamic> json) => _$WishlistFolderModelFromJson(json);
}
