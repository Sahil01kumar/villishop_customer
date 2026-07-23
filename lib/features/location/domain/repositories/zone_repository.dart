import '../../data/models/zone_model.dart';

abstract class ZoneRepository {
  Future<List<ZoneModel>> getZones();
  Future<ZoneModel?> getZoneForLocation(double lat, double lng);
  Future<void> joinWaitlist({
    required String name,
    required String phone,
    required String zoneId,
    String? email,
    required String address,
  });
}
