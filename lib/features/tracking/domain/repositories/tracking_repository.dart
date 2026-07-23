import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';

abstract class TrackingRepository {
  /// Fetches the current tracking state for an order
  Future<OrderTrackingModel> getTrackingState(String orderId);

  /// Stream of tracking updates for real-time synchronization
  Stream<OrderTrackingModel> getTrackingStream(String orderId);

  /// Get the ID of the currently active order being tracked locally
  Future<String?> getActiveOrderId();

  /// Architecture ready for AI route optimization
  Future<String> getOptimizedPolyline({
    required GeoPoint source,
    required GeoPoint destination,
    GeoPoint? currentRiderLocation,
  });

  /// Stop tracking and unsubscribe from realtime updates
  void stopTracking(String orderId);
}
