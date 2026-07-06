import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/address_model.dart';
import '../domain/repositories/location_repository.dart';
import '../data/repositories/location_repository_impl.dart';
import '../../../../core/services/shared_pref_service.dart';

part 'location_provider.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(false) bool isLoading,
    @Default([]) List<AddressModel> addresses,
    AddressModel? selectedAddress,
    String? errorMessage,
  }) = _LocationState;
}

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  return LocationRepositoryImpl(ref.watch(sharedPreferencesServiceProvider));
});

class LocationNotifier extends StateNotifier<LocationState> {
  final LocationRepository _repository;

  LocationNotifier(this._repository) : super(const LocationState()) {
    loadAddresses();
  }

  Future<void> loadAddresses() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final addresses = await _repository.getSavedAddresses();
      AddressModel? selected;
      
      if (addresses.isNotEmpty) {
        selected = addresses.firstWhere((a) => a.isDefault, orElse: () => addresses.first);
      } else {
        selected = const AddressModel(
          id: 'current',
          label: 'Current Location',
          fullAddress: 'Fetching location...',
          latitude: 0,
          longitude: 0,
        );
      }

      state = state.copyWith(isLoading: false, addresses: addresses, selectedAddress: selected);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> pickCurrentLocation() async {
    state = state.copyWith(isLoading: true);
    try {
      final position = await _repository.getCurrentPosition();
      if (position != null) {
        final address = await _repository.getAddressFromLatLng(position.latitude, position.longitude);
        final currentAddress = AddressModel(
          id: 'current',
          label: 'Current Location',
          fullAddress: address,
          latitude: position.latitude,
          longitude: position.longitude,
        );
        state = state.copyWith(isLoading: false, selectedAddress: currentAddress);
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> saveNewAddress(AddressModel address) async {
    await _repository.saveAddress(address);
    await loadAddresses();
  }

  Future<void> deleteAddress(String id) async {
    await _repository.deleteAddress(id);
    await loadAddresses();
  }

  void selectAddress(AddressModel address) {
    state = state.copyWith(selectedAddress: address);
  }
}

final locationProvider = StateNotifierProvider<LocationNotifier, LocationState>((ref) {
  return LocationNotifier(ref.watch(locationRepositoryProvider));
});
