import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import '../../domain/repositories/location_repository.dart';
import '../models/address_model.dart';
import '../../../../core/services/shared_pref_service.dart';

class LocationRepositoryImpl implements LocationRepository {
  final SharedPreferenceService _prefs;
  static const String _addressesKey = 'enterprise_addresses_v1';

  LocationRepositoryImpl(this._prefs);

  @override
  Future<Position?> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return null;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return null;
    }

    if (permission == LocationPermission.deniedForever) return null;

    try {
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 5),
      );
    } catch (_) {
      return await Geolocator.getLastKnownPosition();
    }
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
    
    // If setting as default, unset others
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
      
      // If setting this as default, unset others
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
    await Future.delayed(const Duration(milliseconds: 600));
    // Simulation: Returns a mock village address
    return "Village Sector 7, Block B, Jaipur, Rajasthan 302021";
  }

  @override
  Future<bool> checkServiceability(double lat, double lng) async {
    // Enterprise Radius Validation: Simulation
    // VilliShop operates within a 20km radius of center coordinates
    const centerLat = 26.9124;
    const centerLng = 75.7873;
    
    double distanceInMeters = Geolocator.distanceBetween(lat, lng, centerLat, centerLng);
    return (distanceInMeters / 1000) <= 20.0;
  }

  Future<void> _saveToPrefs(List<AddressModel> addresses) async {
    final String encoded = jsonEncode(addresses.map((a) => a.toJson()).toList());
    await _prefs.setString(_addressesKey, encoded);
  }
}
