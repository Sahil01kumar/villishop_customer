import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/tracking_points.dart';
import '../../../features/tracking/providers/rider_tracking_provider.dart';

final trackingPointsProvider = StateProvider<TrackingPoints?>((ref) => null);

final mapMarkersProvider = Provider<Set<Marker>>((ref) {
  final points = ref.watch(trackingPointsProvider);
  final riderTelemetry = ref.watch(riderLocationProvider);

  if (points == null) return {};

  final Set<Marker> markers = {
    Marker(
      markerId: const MarkerId('customer'),
      position: points.customer,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: const InfoWindow(title: 'You are here'),
    ),
    Marker(
      markerId: const MarkerId('store'),
      position: points.store,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      infoWindow: const InfoWindow(title: 'VilliShop Store'),
    ),
  };

  final riderPos = riderTelemetry?.position ?? points.rider;
  final riderHeading = riderTelemetry?.heading ?? 0.0;

  if (riderPos != null) {
    markers.add(
      Marker(
        markerId: const MarkerId('rider'),
        position: riderPos,
        rotation: riderHeading,
        anchor: const Offset(0.5, 0.5),
        flat: true,
        // In production we would use a custom PNG icon for a delivery scooter/bike
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
        infoWindow: const InfoWindow(title: 'Rahul (VilliShop Partner)'),
      ),
    );
  }

  return markers;
});

final mapPolylinesProvider = Provider<Set<Polyline>>((ref) {
  final points = ref.watch(trackingPointsProvider);
  final riderTelemetry = ref.watch(riderLocationProvider);

  if (points == null) return {};

  final currentRiderPos = riderTelemetry?.position ?? points.rider;

  return {
    Polyline(
      polylineId: const PolylineId('route'),
      points: [
        if (currentRiderPos != null) currentRiderPos else points.store,
        points.customer,
      ],
      color: const Color(0xFF2196F3),
      width: 5,
      geodesic: true,
      jointType: JointType.round,
      startCap: Cap.roundCap,
      endCap: Cap.roundCap,
    ),
  };
});
