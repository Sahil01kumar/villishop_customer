import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shops/data/models/shop_model.dart';

part 'favourite_shop_model.freezed.dart';
part 'favourite_shop_model.g.dart';

@freezed
class FavouriteShopModel with _$FavouriteShopModel {
  const factory FavouriteShopModel({
    required ShopModel shop,
    required DateTime addedAt,
    @Default(0.0) double aiFavouriteScore,
    @Default(false) bool isRecentlyVisited,
  }) = _FavouriteShopModel;

  factory FavouriteShopModel.fromJson(Map<String, dynamic> json) => _$FavouriteShopModelFromJson(json);
}
