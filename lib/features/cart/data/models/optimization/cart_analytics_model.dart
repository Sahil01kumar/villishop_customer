import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_analytics_model.freezed.dart';
part 'cart_analytics_model.g.dart';

@freezed
class CartAnalyticsModel with _$CartAnalyticsModel {
  const factory CartAnalyticsModel({
    @Default(0) int cartViewCount,
    @Default(0) int abandonedCount,
    @Default(0) int totalAddedProducts,
    @Default(0) int totalRemovedProducts,
    @Default(0.0) double potentialRevenueLost,
    DateTime? lastAbandonedAt,
    @Default([]) List<String> frequentlyPurchasedProductIds,
  }) = _CartAnalyticsModel;

  factory CartAnalyticsModel.fromJson(Map<String, dynamic> json) => _$CartAnalyticsModelFromJson(json);
}
