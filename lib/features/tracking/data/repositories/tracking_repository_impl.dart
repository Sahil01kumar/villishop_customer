import 'dart:async';

import 'package:villishop_customer/core/services/shared_pref_service.dart';
import 'package:villishop_customer/core/realtime/realtime_engine.dart';
import 'package:villishop_customer/core/persistence/persistence_keys.dart';
import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';
import 'package:villishop_customer/features/tracking/domain/repositories/tracking_repository.dart';

class TrackingRepositoryImpl implements TrackingRepository {
  final SharedPreferenceService? _prefs;
  final RealtimeEngine _realtimeEngine;

  // For simulation: Keep track of order stages so they don't reset on reload
  static final Map<String, int> _orderStages = {};

  TrackingRepositoryImpl(this._prefs, this._realtimeEngine);

  @override
  Future<OrderTrackingModel> getTrackingState(String orderId) async {
    final stage = _orderStages[orderId] ?? 5;
    return _getMockData(orderId, stage);
  }

  @override
  Stream<OrderTrackingModel> getTrackingStream(String orderId) {
    _realtimeEngine.subscribeToOrder(orderId);
    _saveActiveOrder(orderId);

    final controller = StreamController<OrderTrackingModel>();

    // Start from wherever we left off, or 0
    int stage = _orderStages[orderId] ?? 0;

    Timer.periodic(const Duration(seconds: 4), (timer) {
      if (controller.isClosed) {
        timer.cancel();
        return;
      }

      final data = _getMockData(orderId, stage);
      controller.add(data);
      _orderStages[orderId] = stage;

      if (stage < 5) {
        stage++;
      } else {
        timer.cancel();
      }
    });

    return controller.stream;
  }

  @override
  void stopTracking(String orderId) {
    _realtimeEngine.unsubscribeFromOrder(orderId);
    _orderStages.remove(orderId);
  }

  @override
  Future<String?> getActiveOrderId() async {
    return _prefs?.getString(PersistenceKeys.activeOrderId);
  }

  Future<void> _saveActiveOrder(String orderId) async {
    await _prefs?.setString(PersistenceKeys.activeOrderId, orderId);
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
    final now = DateTime.now();
    const statuses = TrackingStatus.values;
    final currentStatus = statuses[stageIndex];

    return OrderTrackingModel(
      trackingId: 'TRK-$orderId',
      orderId: orderId,
      status: currentStatus,
      timeline: List.generate(statuses.length, (index) {
        final bool isCompleted = index <= stageIndex;
        final timestamp =
            now.subtract(Duration(minutes: (stageIndex - index).abs() * 2));

        return TrackingTimelineItem(
          status: statuses[index],
          title: _getStatusTitle(statuses[index]),
          description: _getStatusDesc(statuses[index]),
          timestamp: timestamp,
          isCompleted: isCompleted,
          isCurrent: index == stageIndex && stageIndex < 5,
        );
      }),
      sourceLocation: const GeoPoint(latitude: 26.9124, longitude: 75.7873),
      destinationLocation:
          const GeoPoint(latitude: 26.9180, longitude: 75.7950),
      deliveryAddress: 'House 402, Block B, Jaipur',
      currentRiderLocation: _getRiderLocation(stageIndex),
      estimatedDistanceKm: (0.8 - (stageIndex * 0.15)).clamp(0.0, 5.0),
      estimatedEtaMinutes: stageIndex >= 5 ? 0 : 10 - stageIndex * 2,
      riderName: 'Rahul Singh',
      riderPhone: '+919876543210',
      riderPhoto:
          'https://img.freepik.com/free-photo/handsome-delivery-man-smiling_23-2148291544.jpg',
      riderRating: 4.9,
      completedDeliveries: 1250,
      vehicleType: 'Electric Scooter',
      vehicleNumber: 'RJ 14 EV 1234',
      currentSpeedKmph: (stageIndex > 2 && stageIndex < 5) ? 25.0 : 0.0,
      polylinePoints: 'q`wnB{psuMj@u@j@u@j@u@j@u@j@u@j@u@j@u@j@u@j@u@',
      otp: '4582',
      isExpress: true,
      isPriority: true,
      health: DeliveryHealth.excellent,
      delayReason: DelayReason.none,
      isNearbyZoneDelivery: orderId.contains('nearby'),
      nearbyZoneName: 'Jaipur West',
    );
  }

  String _getStatusTitle(TrackingStatus status) {
    switch (status) {
      case TrackingStatus.orderConfirmed:
        return 'Order Confirmed';
      case TrackingStatus.preparing:
        return 'Preparing';
      case TrackingStatus.riderAssigned:
        return 'Rider Assigned';
      case TrackingStatus.onTheWay:
        return 'On The Way';
      case TrackingStatus.nearby:
        return 'Rider Nearby';
      case TrackingStatus.delivered:
        return 'Delivered';
    }
  }

  String _getStatusDesc(TrackingStatus status) {
    switch (status) {
      case TrackingStatus.orderConfirmed:
        return 'Store has received your order';
      case TrackingStatus.preparing:
        return 'Items are being packed';
      case TrackingStatus.riderAssigned:
        return 'Rahul Singh is reaching store';
      case TrackingStatus.onTheWay:
        return 'Rider is moving towards you';
      case TrackingStatus.nearby:
        return 'Please be ready to receive';
      case TrackingStatus.delivered:
        return 'Order handed over successfully';
    }
  }

  GeoPoint _getRiderLocation(int stage) {
    double lat = 26.9124;
    double lng = 75.7873;
    if (stage <= 2) return GeoPoint(latitude: lat, longitude: lng);

    double progress = (stage - 2) / 3.0;
    lat += (progress * 0.0056);
    lng += (progress * 0.0077);

    return GeoPoint(latitude: lat, longitude: lng);
  }
}
