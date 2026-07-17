import 'package:google_maps_flutter/google_maps_flutter.dart';

class RiderTelemetry {
  final LatLng position;
  final double heading;
  final double speed;
  final DateTime timestamp;
  final bool isOffline;

  const RiderTelemetry({
    required this.position,
    required this.heading,
    required this.speed,
    required this.timestamp,
    this.isOffline = false,
  });

  RiderTelemetry copyWith({
    LatLng? position,
    double? heading,
    double? speed,
    DateTime? timestamp,
    bool? isOffline,
  }) {
    return RiderTelemetry(
      position: position ?? this.position,
      heading: heading ?? this.heading,
      speed: speed ?? this.speed,
      timestamp: timestamp ?? this.timestamp,
      isOffline: isOffline ?? this.isOffline,
    );
  }
}
