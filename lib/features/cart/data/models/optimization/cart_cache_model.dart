import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_cache_model.freezed.dart';
part 'cart_cache_model.g.dart';

@freezed
class CartCacheModel with _$CartCacheModel {
  const factory CartCacheModel({
    required String sessionId,
    required DateTime cachedAt,
    required String cartJson, // Serialized MultiShopCartModel
    @Default(true) bool isAutoRestoreEnabled,
  }) = _CartCacheModel;

  factory CartCacheModel.fromJson(Map<String, dynamic> json) => _$CartCacheModelFromJson(json);
}
