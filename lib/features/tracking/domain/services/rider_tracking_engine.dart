import 'dart:math';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RiderTrackingEngine {
  /// Minimum distance in meters to consider a movement valid (ignore GPS jitter)
  static const double minMovementThreshold = 2.0;

  /// Maximum distance in meters to consider a movement valid (ignore GPS jumps)
  static const double maxJumpThreshold = 500.0;

  /// Validates the new coordinates against the previous telemetry
  static bool isValidMovement(LatLng prev, LatLng next) {
    final distance = calculateDistance(prev, next);
    return distance >= minMovementThreshold && distance <= maxJumpThreshold;
  }

  /// Haversine formula to calculate distance between two points in meters
  static double calculateDistance(LatLng p1, LatLng p2) {
    const double r = 6371e3; // Earth radius in meters
    final double phi1 = p1.latitude * pi / 180;
    final double phi2 = p2.latitude * pi / 180;
    final double deltaPhi = (p2.latitude - p1.latitude) * pi / 180;
    final double deltaLambda = (p2.longitude - p1.longitude) * pi / 180;

    final double a = sin(deltaPhi / 2) * sin(deltaPhi / 2) +
        cos(phi1) * cos(phi2) * sin(deltaLambda / 2) * sin(deltaLambda / 2);
    final double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return r * c;
  }

  /// Calculates the heading (bearing) between two points
  static double calculateHeading(LatLng from, LatLng to) {
    final double lat1 = from.latitude * pi / 180;
    final double lon1 = from.longitude * pi / 180;
    final double lat2 = to.latitude * pi / 180;
    final double lon2 = to.longitude * pi / 180;

    final double dLon = lon2 - lon1;

    final double y = sin(dLon) * cos(lat2);
    final double x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon);

    final double radians = atan2(y, x);
    return (radians * 180 / pi + 360) % 360;
  }

  /// Interpolates between two points given a fraction (0.0 to 1.0)
  static LatLng interpolate(LatLng from, LatLng to, double fraction) {
    final double lat = (to.latitude - from.latitude) * fraction + from.latitude;
    final double lng =
        (to.longitude - from.longitude) * fraction + from.longitude;
    return LatLng(lat, lng);
  }

  /// Interpolates heading smoothly (handles 360/0 degree crossover)
  static double interpolateHeading(double from, double to, double fraction) {
    double diff = to - from;
    if (diff.abs() > 180) {
      if (diff > 0) {
        from += 360;
      } else {
        to += 360;
      }
    }
    return ((to - from) * fraction + from) % 360;
  }
}
