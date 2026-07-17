import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:villishop_customer/features/tracking/data/models/rider_model.dart';

class LiveRiderMarker extends StatelessWidget {
  final RiderModel rider;
  const LiveRiderMarker({super.key, required this.rider});

  static Marker buildMarker({
    required RiderModel rider,
    required BitmapDescriptor icon,
  }) {
    return Marker(
      markerId: MarkerId('rider_${rider.id}'),
      position: LatLng(
          rider.currentLocation.latitude, rider.currentLocation.longitude),
      rotation: rider.heading,
      anchor: const Offset(0.5, 0.5),
      flat: true,
      icon: icon,
      zIndexInt: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
