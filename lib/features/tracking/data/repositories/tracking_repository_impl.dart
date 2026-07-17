import 'dart:async';
import 'package:villishop_customer/core/services/shared_pref_service.dart';
import 'package:villishop_customer/core/realtime/realtime_engine.dart';
import 'package:villishop_customer/core/persistence/persistence_keys.dart';
import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';
import 'package:villishop_customer/features/tracking/domain/repositories/tracking_repository.dart';

class TrackingRepositoryImpl implements TrackingRepository {
  final SharedPreferenceService? _prefs;
  final RealtimeEngine _realtimeEngine;

  TrackingRepositoryImpl(this._prefs, this._realtimeEngine);

  @override
  Future<OrderTrackingModel> getTrackingState(String orderId) async {
    return _getMockData(orderId, 0);
  }

  @override
  Stream<OrderTrackingModel> getTrackingStream(String orderId) {
    _realtimeEngine.subscribeToOrder(orderId);

    // Save as active order when stream starts
    _saveActiveOrder(orderId);

    return _realtimeEngine.eventStream.where((event) {
      return event.maybeWhen(
        partnerLocationChanged: (id, _, __, ___, ____) => id == orderId,
        orderUpdated: (id, _, __) => id == orderId,
        orderDelivered: (id, _) => id == orderId,
        orElse: () => false,
      );
    }).map((event) {
      final state = event.maybeWhen(
        orderDelivered: (_, __) {
          _clearActiveOrder();
          return 3;
        },
        orElse: () => 2,
      );
      return _getMockData(orderId, state);
    });
  }

  @override
  Future<String?> getActiveOrderId() async {
    return _prefs?.getString(PersistenceKeys.activeOrderId);
  }

  Future<void> _saveActiveOrder(String orderId) async {
    await _prefs?.setString(PersistenceKeys.activeOrderId, orderId);
  }

  Future<void> _clearActiveOrder() async {
    await _prefs?.remove(PersistenceKeys.activeOrderId);
  }

  @override
  Future<String> getOptimizedPolyline({
    required GeoPoint source,
    required GeoPoint destination,
    GeoPoint? currentRiderLocation,
  }) async {
    return 'q`wnB{psuMj@u@j@u@j@u@j@u@j@u@j@u@j@u@j@u@j@u@j@u@';
  }

  OrderTrackingModel _getMockData(String orderId, int stageIndex) {
    return OrderTrackingModel(
      trackingId: 'TRK-$orderId',
      orderId: orderId,
      status: stageIndex == 3
          ? TrackingStatus.delivered
          : TrackingStatus.liveTracking,
      timeline: [],
      sourceLocation: const GeoPoint(latitude: 26.9124, longitude: 75.7873),
      destinationLocation:
          const GeoPoint(latitude: 26.9180, longitude: 75.7950),
      deliveryAddress: 'House 402, Block B, Jaipur',
    );
  }
}
