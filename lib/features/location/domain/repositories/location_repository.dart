import 'package:geolocator/geolocator.dart';
import '../../data/models/address_model.dart';

abstract class LocationRepository {
  Future<Position?> getCurrentPosition();
  Future<List<AddressModel>> getSavedAddresses();
  Future<void> saveAddress(AddressModel address);
  Future<void> updateAddress(AddressModel address);
  Future<void> deleteAddress(String id);
  Future<void> setDefaultAddress(String id);
  Future<String> getAddressFromLatLng(double lat, double lng);
  
  /// Checks if the given coordinates are within the delivery radius of VilliShop
  Future<bool> checkServiceability(double lat, double lng);
}
