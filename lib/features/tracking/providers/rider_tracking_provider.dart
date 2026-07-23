import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/maps/models/rider_telemetry.dart';
import '../domain/services/rider_tracking_engine.dart';
import 'tracking_provider.dart';

/// Notifier for real-time interpolated rider location
class RiderLocationNotifier extends StateNotifier<RiderTelemetry?> {
  RiderLocationNotifier() : super(null);

  Timer? _interpolationTimer;
  LatLng? _startPosition;
  LatLng? _targetPosition;
  double _startHeading = 0;
  double _targetHeading = 0;

  static const int _fps = 60;
  static const Duration _interpolationDuration = Duration(seconds: 2);

  void updateTarget(LatLng position, double? heading, double speed) {
    if (state == null) {
      state = RiderTelemetry(
        position: position,
        heading: heading ?? 0.0,
        speed: speed,
        timestamp: DateTime.now(),
      );
      _targetPosition = position;
      _targetHeading = heading ?? 0.0;
      return;
    }

    if (!RiderTrackingEngine.isValidMovement(state!.position, position)) {
      return;
    }

    _startPosition = state!.position;
    _targetPosition = position;
    _startHeading = state!.heading;

    // Calculate heading if not provided
    _targetHeading = heading ??
        RiderTrackingEngine.calculateHeading(_startPosition!, _targetPosition!);

    _startAnimation();
  }

  void _startAnimation() {
    _interpolationTimer?.cancel();
    final startTime = DateTime.now();

    _interpolationTimer = Timer.periodic(
      const Duration(milliseconds: 1000 ~/ _fps),
      (timer) {
        final elapsed = DateTime.now().difference(startTime);
        double fraction =
            elapsed.inMilliseconds / _interpolationDuration.inMilliseconds;

        if (fraction >= 1.0) {
          fraction = 1.0;
          timer.cancel();
        }

        if (_startPosition != null && _targetPosition != null) {
          final currentPos = RiderTrackingEngine.interpolate(
              _startPosition!, _targetPosition!, fraction);
          final currentHeading = RiderTrackingEngine.interpolateHeading(
              _startHeading, _targetHeading, fraction);

          state = state?.copyWith(
            position: currentPos,
            heading: currentHeading,
            timestamp: DateTime.now(),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _interpolationTimer?.cancel();
    super.dispose();
  }
}

final riderLocationProvider =
    StateNotifierProvider<RiderLocationNotifier, RiderTelemetry?>((ref) {
  return RiderLocationNotifier();
});

/// High-level tracking status provider
final trackingStatusProvider = Provider.family<String, String>((ref, orderId) {
  final trackingAsync = ref.watch(trackingProvider(orderId));
  return trackingAsync.maybeWhen(
    data: (tracking) => tracking.status.name,
    loading: () => 'loading',
    error: (_, __) => 'error',
    orElse: () => 'unknown',
  );
});

final etaProvider = StateProvider<int?>((ref) => null);
final distanceProvider = StateProvider<double?>((ref) => null);

/// Engine that bridges the Raw tracking stream with interpolated telemetry
final trackingEngineProvider = Provider.family<void, String>((ref, orderId) {
  final trackingAsync = ref.watch(trackingProvider(orderId));

  trackingAsync.whenData((tracking) {
    if (tracking.currentRiderLocation != null) {
      final pos = LatLng(tracking.currentRiderLocation!.latitude,
          tracking.currentRiderLocation!.longitude);

      ref.read(riderLocationProvider.notifier).updateTarget(
            pos,
            null, // Heading calculated by engine
            tracking.currentSpeedKmph,
          );

      ref.read(etaProvider.notifier).state = tracking.estimatedEtaMinutes;
      ref.read(distanceProvider.notifier).state = tracking.estimatedDistanceKm;
    }
  });
});
