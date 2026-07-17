import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import '../data/models/address_model.dart';
import '../domain/repositories/location_repository.dart';
import '../data/repositories/location_repository_impl.dart';
import '../../../../core/services/shared_pref_service.dart';

part 'location_provider.freezed.dart';

enum LocationPermissionStatus {
  initial,
  granted,
  denied,
  deniedForever,
  disabled
}

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(false) bool isLoading,
    @Default([]) List<AddressModel> addresses,
    @Default([]) List<AddressModel> recentAddresses,
    AddressModel? selectedAddress,
    Position? currentPosition,
    String? currentAddressName,
    @Default(LocationPermissionStatus.initial)
    LocationPermissionStatus permissionStatus,
    String? errorMessage,
    @Default(true) bool isServiceable,
    @Default(false) bool isLiveTracking,
  }) = _LocationState;
}

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  return LocationRepositoryImpl(ref.watch(sharedPreferencesServiceProvider));
});

class LocationNotifier extends StateNotifier<LocationState> {
  final LocationRepository _repository;
  final SharedPreferenceService _prefs;
  StreamSubscription<Position>? _positionSubscription;

  static const String _selectedAddressKey = 'enterprise_selected_address_v1';
  static const String _recentAddressesKey = 'enterprise_recent_addresses_v1';

  LocationNotifier(this._repository, this._prefs)
      : super(const LocationState()) {
    _init();
  }

  @override
  void dispose() {
    _positionSubscription?.cancel();
    super.dispose();
  }

  Future<void> _init() async {
    await loadAddresses();
    _restoreSelectedAddress();
    _restoreRecentAddresses();
    // Don't wait for permission check to allow app startup to be faster
    unawaited(checkPermissionAndStartTracking());
  }

  Future<void> checkPermissionAndStartTracking() async {
    try {
      final serviceEnabled = await _repository.isLocationServiceEnabled();
      if (!serviceEnabled) {
        state =
            state.copyWith(permissionStatus: LocationPermissionStatus.disabled);
        return;
      }

      final permission = await _repository.checkPermission();
      _handlePermissionChange(permission);
    } catch (e) {
      debugPrint('Error checking location permission: $e');
    }
  }

  void _handlePermissionChange(LocationPermission permission) {
    switch (permission) {
      case LocationPermission.always:
      case LocationPermission.whileInUse:
        state =
            state.copyWith(permissionStatus: LocationPermissionStatus.granted);
        startLiveTracking();
        break;
      case LocationPermission.denied:
        state =
            state.copyWith(permissionStatus: LocationPermissionStatus.denied);
        break;
      case LocationPermission.deniedForever:
        state = state.copyWith(
            permissionStatus: LocationPermissionStatus.deniedForever);
        break;
      case LocationPermission.unableToDetermine:
        state =
            state.copyWith(permissionStatus: LocationPermissionStatus.denied);
        break;
    }
  }

  Future<void> requestPermission() async {
    final permission = await _repository.requestPermission();
    _handlePermissionChange(permission);
  }

  void startLiveTracking() {
    if (_positionSubscription != null) return;

    state = state.copyWith(isLiveTracking: true);
    _positionSubscription = _repository.getPositionStream().listen(
      (position) {
        _onLocationUpdated(position);
      },
      onError: (e) {
        debugPrint("Location stream error: $e");
        if (mounted) {
          state = state.copyWith(isLiveTracking: false);
        }
      },
    );
  }

  Future<void> _onLocationUpdated(Position position) async {
    if (!mounted) return;
    state = state.copyWith(currentPosition: position);

    // Only reverse geocode if we don't have a manually selected address
    // Or if the selected address is the 'current' one
    if (state.selectedAddress == null ||
        state.selectedAddress?.id == 'current') {
      try {
        final addressStr = await _repository.getAddressFromLatLng(
            position.latitude, position.longitude);
        final currentAddress = AddressModel(
          id: 'current',
          label: 'Current Location',
          fullAddress: addressStr,
          latitude: position.latitude,
          longitude: position.longitude,
        );
        if (mounted) {
          state = state.copyWith(
            selectedAddress: currentAddress,
            currentAddressName: addressStr,
          );
          _checkServiceability(position.latitude, position.longitude);
        }
      } catch (e) {
        debugPrint('Geocoding failed: $e');
      }
    }
  }

  void _restoreSelectedAddress() {
    final saved = _prefs.getString(_selectedAddressKey);
    if (saved != null) {
      try {
        final address = AddressModel.fromJson(jsonDecode(saved));
        state = state.copyWith(selectedAddress: address);
        _checkServiceability(address.latitude, address.longitude);
      } catch (_) {}
    }
  }

  void _restoreRecentAddresses() {
    final saved = _prefs.getString(_recentAddressesKey);
    if (saved != null) {
      try {
        final List<dynamic> list = jsonDecode(saved);
        state = state.copyWith(
            recentAddresses:
                list.map((e) => AddressModel.fromJson(e)).toList());
      } catch (_) {}
    }
  }

  Future<void> loadAddresses() async {
    if (!mounted) return;
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final addresses = await _repository.getSavedAddresses();
      if (!mounted) return;
      state = state.copyWith(isLoading: false, addresses: addresses);

      if (state.selectedAddress == null && addresses.isNotEmpty) {
        final def = addresses.firstWhere((a) => a.isDefault,
            orElse: () => addresses.first);
        selectAddress(def);
      }
    } catch (e) {
      if (mounted) {
        state = state.copyWith(isLoading: false, errorMessage: e.toString());
      }
    }
  }

  Future<void> pickCurrentLocation() async {
    if (!mounted) return;
    state = state.copyWith(isLoading: true);
    try {
      final position = await _repository.getCurrentPosition();
      if (position != null) {
        await _onLocationUpdated(position);
      }
      if (mounted) state = state.copyWith(isLoading: false);
    } catch (e) {
      if (mounted) {
        state = state.copyWith(
            isLoading: false,
            errorMessage: 'Could not fetch location. Please select manually.');
      }
    }
  }

  void selectAddress(AddressModel address) {
    state = state.copyWith(selectedAddress: address);
    _prefs.setString(_selectedAddressKey, jsonEncode(address.toJson()));
    _checkServiceability(address.latitude, address.longitude);

    if (address.id != 'current') {
      final List<AddressModel> updatedRecent = List.from(state.recentAddresses);
      updatedRecent.removeWhere((a) => a.id == address.id);
      updatedRecent.insert(0, address);
      if (updatedRecent.length > 5) updatedRecent.removeLast();

      state = state.copyWith(recentAddresses: updatedRecent);
      _prefs.setString(_recentAddressesKey,
          jsonEncode(updatedRecent.map((e) => e.toJson()).toList()));
    }
  }

  Future<void> _checkServiceability(double lat, double lng) async {
    final serviceable = await _repository.checkServiceability(lat, lng);
    if (mounted) {
      state = state.copyWith(isServiceable: serviceable);
    }
  }

  Future<void> saveNewAddress(AddressModel address) async {
    await _repository.saveAddress(address);
    await loadAddresses();
    selectAddress(address);
  }

  Future<void> updateAddress(AddressModel address) async {
    await _repository.updateAddress(address);
    if (state.selectedAddress?.id == address.id) {
      selectAddress(address);
    }
    await loadAddresses();
  }

  Future<void> deleteAddress(String id) async {
    await _repository.deleteAddress(id);
    if (state.selectedAddress?.id == id) {
      state = state.copyWith(selectedAddress: null);
      _prefs.remove(_selectedAddressKey);
    }
    await loadAddresses();
  }
}

final locationProvider =
    StateNotifierProvider<LocationNotifier, LocationState>((ref) {
  return LocationNotifier(
    ref.watch(locationRepositoryProvider),
    ref.watch(sharedPreferencesServiceProvider),
  );
});
