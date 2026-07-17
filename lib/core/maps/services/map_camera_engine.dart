import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapCameraEngine {
  final GoogleMapController controller;

  MapCameraEngine(this.controller);

  Future<void> animateToLocation(LatLng location, {double zoom = 15.0}) async {
    await controller.animateCamera(
      CameraUpdate.newLatLngZoom(location, zoom),
    );
  }

  Future<void> fitBounds(List<LatLng> points, {double padding = 80.0}) async {
    if (points.isEmpty) return;

    double minLat = points.first.latitude;
    double maxLat = points.first.latitude;
    double minLng = points.first.longitude;
    double maxLng = points.first.longitude;

    for (var point in points) {
      if (point.latitude < minLat) minLat = point.latitude;
      if (point.latitude > maxLat) maxLat = point.latitude;
      if (point.longitude < minLng) minLng = point.longitude;
      if (point.longitude > maxLng) maxLng = point.longitude;
    }

    final bounds = LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );

    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, padding),
    );
  }
}
