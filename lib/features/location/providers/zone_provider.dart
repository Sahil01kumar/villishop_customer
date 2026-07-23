import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/zone_model.dart';
import 'location_provider.dart';
import 'zone_repository_provider.dart';

final currentZoneProvider = FutureProvider<ZoneModel?>((ref) async {
  final address = ref.watch(locationProvider.select((s) => s.selectedAddress));

  if (address == null) return null;

  final repository = ref.watch(zoneRepositoryProvider);
  return repository.getZoneForLocation(address.latitude, address.longitude);
});

final allZonesProvider = FutureProvider<List<ZoneModel>>((ref) async {
  final repository = ref.watch(zoneRepositoryProvider);
  return repository.getZones();
});
