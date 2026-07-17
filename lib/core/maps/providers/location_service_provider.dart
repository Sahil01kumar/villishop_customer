import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

enum LocationServiceStatus {
  initial,
  loading,
  enabled,
  disabled,
  permissionDenied,
  permissionPermanentlyDenied,
  error
}

class LocationServiceNotifier extends StateNotifier<LocationServiceStatus> {
  LocationServiceNotifier() : super(LocationServiceStatus.initial);

  Future<void> checkStatus() async {
    state = LocationServiceStatus.loading;
    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        state = LocationServiceStatus.disabled;
        return;
      }

      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          state = LocationServiceStatus.permissionDenied;
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        state = LocationServiceStatus.permissionPermanentlyDenied;
        return;
      }

      state = LocationServiceStatus.enabled;
    } catch (_) {
      state = LocationServiceStatus.error;
    }
  }

  Future<void> openSettings() async {
    await openAppSettings();
  }

  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }
}

final locationServiceProvider =
    StateNotifierProvider<LocationServiceNotifier, LocationServiceStatus>(
        (ref) {
  return LocationServiceNotifier();
});
