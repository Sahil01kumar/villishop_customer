import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import '../../domain/repositories/location_repository.dart';
import '../models/address_model.dart';
import '../../../../core/services/shared_pref_service.dart';

import '../../../../core/persistence/persistence_keys.dart';

class LocationRepositoryImpl implements LocationRepository {
  final SharedPreferenceService _prefs;

  LocationRepositoryImpl(this._prefs);

  static const String _addressesKey = '${PersistenceKeys.selectedAddress}_list';

  @override
  Future<LocationPermission> checkPermission() async {
    return await Geolocator.checkPermission();
  }

  @override
  Future<LocationPermission> requestPermission() async {
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      debugPrint("GPS Permission Granted");
    }
    return permission;
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    final enabled = await Geolocator.isLocationServiceEnabled();
    if (enabled) {
      debugPrint("GPS Enabled");
    }
    return enabled;
  }

  @override
  Future<Position?> getCurrentPosition() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 10),
      );
      debugPrint("Current Latitude: ${position.latitude}");
      debugPrint("Current Longitude: ${position.longitude}");
      return position;
    } catch (e) {
      debugPrint("Error fetching position: $e");
      return await Geolocator.getLastKnownPosition();
    }
  }

  @override
  Stream<Position> getPositionStream() {
    debugPrint("Location Stream Started");
    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 5,
      ),
    );
  }

  @override
  Future<List<AddressModel>> getSavedAddresses() async {
    final String? jsonStr = _prefs.getString(_addressesKey);
    if (jsonStr == null) return [];

    try {
      final List<dynamic> list = jsonDecode(jsonStr);
      return list.map((item) => AddressModel.fromJson(item)).toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Future<void> saveAddress(AddressModel address) async {
    final addresses = await getSavedAddresses();
    List<AddressModel> updated;
    if (address.isDefault) {
      updated = addresses.map((a) => a.copyWith(isDefault: false)).toList();
    } else {
      updated = List.from(addresses);
    }
    updated.add(address.copyWith(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ));
    await _saveToPrefs(updated);
  }

  @override
  Future<void> updateAddress(AddressModel address) async {
    final addresses = await getSavedAddresses();
    final index = addresses.indexWhere((a) => a.id == address.id);
    if (index != -1) {
      List<AddressModel> updated = List.from(addresses);
      if (address.isDefault) {
        updated = updated.map((a) => a.copyWith(isDefault: false)).toList();
      }
      updated[index] = address.copyWith(updatedAt: DateTime.now());
      await _saveToPrefs(updated);
    }
  }

  @override
  Future<void> deleteAddress(String id) async {
    final addresses = await getSavedAddresses();
    addresses.removeWhere((a) => a.id == id);
    await _saveToPrefs(addresses);
  }

  @override
  Future<void> setDefaultAddress(String id) async {
    final addresses = await getSavedAddresses();
    final updated = addresses.map((a) {
      return a.copyWith(isDefault: a.id == id);
    }).toList();
    await _saveToPrefs(updated);
  }

  @override
  Future<String> getAddressFromLatLng(double lat, double lng) async {
    try {
      final List<Placemark> placemarks =
          await placemarkFromCoordinates(lat, lng);
      if (placemarks.isNotEmpty) {
        final p = placemarks.first;
        final address =
            "${p.name}, ${p.subLocality}, ${p.locality}, ${p.postalCode}";
        debugPrint("Current Address: $address");
        return address;
      }
    } catch (e) {
      debugPrint("Geocoding error: $e");
    }
    return "Unknown Address";
  }

  @override
  Future<bool> checkServiceability(double lat, double lng) async {
    const centerLat = 26.9124;
    const centerLng = 75.7873;
    double distanceInMeters =
        Geolocator.distanceBetween(lat, lng, centerLat, centerLng);
    return (distanceInMeters / 1000) <= 20.0;
  }

  Future<void> _saveToPrefs(List<AddressModel> addresses) async {
    final String encoded =
        jsonEncode(addresses.map((a) => a.toJson()).toList());
    await _prefs.setString(_addressesKey, encoded);
  }
}
