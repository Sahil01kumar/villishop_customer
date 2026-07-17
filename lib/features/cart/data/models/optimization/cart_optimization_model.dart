import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../home/data/models/product_model.dart';

part 'cart_optimization_model.freezed.dart';
part 'cart_optimization_model.g.dart';

@freezed
class CartOptimizationModel with _$CartOptimizationModel {
  const factory CartOptimizationModel({
    @Default([]) List<ProductModel> smartRecommendations,
    @Default([]) List<CartBundleSuggestion> bundleSuggestions,
    @Default(0.0) double predictedPriceNextOrder,
    @Default(0.0) double aiUpsellPotential,
    @Default(false) bool isAbandonedCartReminderEnabled,
  }) = _CartOptimizationModel;

  factory CartOptimizationModel.fromJson(Map<String, dynamic> json) =>
      _$CartOptimizationModelFromJson(json);
}

@freezed
class CartBundleSuggestion with _$CartBundleSuggestion {
  const factory CartBundleSuggestion({
    required String id,
    required String name,
    required List<ProductModel> products,
    required double bundlePrice,
    required double savingsAmount,
  }) = _CartBundleSuggestion;

  factory CartBundleSuggestion.fromJson(Map<String, dynamic> json) =>
      _$CartBundleSuggestionFromJson(json);
}
