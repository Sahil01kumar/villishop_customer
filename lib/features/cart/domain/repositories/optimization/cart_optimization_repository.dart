import 'package:villishop_customer/features/cart/data/models/optimization/cart_analytics_model.dart';
import 'package:villishop_customer/features/cart/data/models/optimization/cart_optimization_model.dart';
import 'package:villishop_customer/features/cart/data/models/optimization/cart_sync_model.dart';
import 'package:villishop_customer/features/cart/data/models/multi_shop_cart_model.dart';

abstract class CartOptimizationRepository {
  // Performance & Sync
  Future<CartSyncModel> syncCart(MultiShopCartModel cart);
  Future<void> cacheCartLocally(MultiShopCartModel cart);
  Future<MultiShopCartModel?> restoreCartFromCache();

  // Analytics
  Future<void> trackCartEvent(String eventName, Map<String, dynamic> metadata);
  Future<CartAnalyticsModel> getCartAnalytics();

  // AI & Optimization (Architecture Ready)
  Future<CartOptimizationModel> getOptimizationData(MultiShopCartModel cart);
  
  // Experience
  Future<void> scheduleAbandonedCartReminder();
  Future<MultiShopCartModel?> getPreviousSuccessfulCart();
}
