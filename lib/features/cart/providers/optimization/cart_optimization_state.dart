import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:villishop_customer/features/cart/data/models/optimization/cart_sync_model.dart';
import 'package:villishop_customer/features/cart/data/models/optimization/cart_analytics_model.dart';
import 'package:villishop_customer/features/cart/data/models/optimization/cart_optimization_model.dart';

part 'cart_optimization_state.freezed.dart';

@freezed
class CartOptimizationState with _$CartOptimizationState {
  const factory CartOptimizationState({
    @Default(false) bool isInitialised,
    @Default(CartSyncModel()) CartSyncModel syncStatus,
    @Default(CartAnalyticsModel()) CartAnalyticsModel analytics,
    @Default(CartOptimizationModel()) CartOptimizationModel optimization,
    String? lastRestoredCartId,
  }) = _CartOptimizationState;
}
