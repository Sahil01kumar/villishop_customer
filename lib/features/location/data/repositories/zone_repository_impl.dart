import '../../domain/repositories/zone_repository.dart';
import '../models/zone_model.dart';

class ZoneRepositoryImpl implements ZoneRepository {
  @override
  Future<List<ZoneModel>> getZones() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _dummyZones;
  }

  @override
  Future<ZoneModel?> getZoneForLocation(double lat, double lng) async {
    await Future.delayed(const Duration(milliseconds: 300));

    // Simplistic check for dummy implementation
    // In real app, we would use polygon intersection logic
    if (lat > 26.9 && lat < 27.0 && lng > 75.7 && lng < 75.9) {
      return _dummyZones.firstWhere((z) => z.id == 'zone_jaipur');
    }

    if (lat > 28.0 && lat < 28.2 && lng > 75.8 && lng < 76.0) {
      return _dummyZones.firstWhere((z) => z.id == 'zone_khetri');
    }

    return null; // Outside all zones
  }

  @override
  Future<void> joinWaitlist({
    required String name,
    required String phone,
    required String zoneId,
    String? email,
    required String address,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    // Mock successful submission
  }

  final List<ZoneModel> _dummyZones = [
    const ZoneModel(
      id: 'zone_jaipur',
      name: 'Jaipur Central',
      status: ZoneStatus.active,
      shopCount: 30,
      partnerCount: 15,
    ),
    const ZoneModel(
      id: 'zone_khetri',
      name: 'Khetri Town',
      // TODO: Temporary Development Whitelist for testing.
      // In production, this status will be managed by the backend.
      status: ZoneStatus.active,
      estimatedLaunchDate: '15th Oct 2024',
      interestedUsers: 1200,
      upcomingStores: 12,
      shopCount: 20,
      partnerCount: 8,
    ),
    const ZoneModel(
      id: 'zone_chirawa',
      name: 'Chirawa City',
      status: ZoneStatus.comingSoon,
      interestedUsers: 450,
      upcomingStores: 5,
    ),
  ];
}
