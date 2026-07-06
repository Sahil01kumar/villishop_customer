import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import '../../domain/repositories/location_repository.dart';
import '../models/address_model.dart';
import '../../../../core/services/shared_pref_service.dart';

class LocationRepositoryImpl implements LocationRepository {
  final SharedPreferenceService _prefs;
  static const String _addressesKey = 'saved_addresses';

  LocationRepositoryImpl(this._prefs);

  @override
  Future<Position?> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Future<List<AddressModel>> getSavedAddresses() async {
    final String? addressesJson = _prefs.getString(_addressesKey);
    if (addressesJson == null) return [];

    final List<dynamic> decoded = jsonDecode(addressesJson);
    return decoded.map((item) => AddressModel.fromJson(item)).toList();
  }

  @override
  Future<void> saveAddress(AddressModel address) async {
    final addresses = await getSavedAddresses();
    addresses.add(address);
    await _saveToPrefs(addresses);
  }

  @override
  Future<void> updateAddress(AddressModel address) async {
    final addresses = await getSavedAddresses();
    final index = addresses.indexWhere((a) => a.id == address.id);
    if (index != -1) {
      addresses[index] = address;
      await _saveToPrefs(addresses);
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
    // This would typically use Geocoding package or Google Maps API
    // For now returning a placeholder as per Task 5 requirements (API Ready)
    return "Villiship Center, Village Road, India";
  }

  Future<void> _saveToPrefs(List<AddressModel> addresses) async {
    final String encoded = jsonEncode(addresses.map((a) => a.toJson()).toList());
    await _prefs.setString(_addressesKey, encoded);
  }
}
