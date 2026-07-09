import 'package:villishop_customer/features/cart/data/models/optimization/cart_analytics_model.dart';
import 'package:villishop_customer/features/cart/data/models/optimization/cart_optimization_model.dart';
import 'package:villishop_customer/features/cart/data/models/optimization/cart_sync_model.dart';
import 'package:villishop_customer/features/cart/data/models/cart_model.dart';

abstract class CartOptimizationRepository {
  // Performance & Sync
  Future<CartSyncModel> syncCart(CartModel cart);
  Future<void> cacheCartLocally(CartModel cart);
  Future<CartModel?> restoreCartFromCache();

  // Analytics
  Future<void> trackCartEvent(String eventName, Map<String, dynamic> metadata);
  Future<CartAnalyticsModel> getCartAnalytics();

  // AI & Optimization (Architecture Ready)
  Future<CartOptimizationModel> getOptimizationData(CartModel cart);
  
  // Experience
  Future<void> scheduleAbandonedCartReminder();
  Future<CartModel?> getPreviousSuccessfulCart();
}
