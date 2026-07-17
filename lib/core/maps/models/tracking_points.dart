import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackingPoints {
  final LatLng customer;
  final LatLng store;
  final LatLng? rider;

  const TrackingPoints({
    required this.customer,
    required this.store,
    this.rider,
  });

  TrackingPoints copyWith({
    LatLng? customer,
    LatLng? store,
    LatLng? rider,
  }) {
    return TrackingPoints(
      customer: customer ?? this.customer,
      store: store ?? this.store,
      rider: rider ?? this.rider,
    );
  }
}
