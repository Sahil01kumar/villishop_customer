import 'dart:async';
import 'dart:math';
import 'package:villishop_customer/features/tracking/data/models/rider_model.dart';
import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';
import 'package:villishop_customer/features/tracking/domain/repositories/rider_repository.dart';
import 'package:villishop_customer/features/tracking/domain/services/smart_eta_engine.dart';

class RiderRepositoryImpl implements RiderRepository {
  @override
  Stream<RiderModel> getRiderStream(String riderId) {
    const start = GeoPoint(latitude: 26.9124, longitude: 75.7873);
    const end = GeoPoint(latitude: 26.9150, longitude: 75.8000);

    return Stream.periodic(const Duration(seconds: 2), (count) {
      const int totalSteps = 30;
      final progress = (count % totalSteps) / totalSteps.toDouble();

      final lat = start.latitude + (end.latitude - start.latitude) * progress;
      final lng =
          start.longitude + (end.longitude - start.longitude) * progress;

      final distanceLeft = 2.4 * (1 - progress);
      final trafficScore = 1.0 + (Random().nextDouble() * 1.5);

      final eta = SmartETAEngine.calculate(
        distanceKm: distanceLeft,
        avgSpeedKmph: 25,
        trafficScore: trafficScore,
        weatherStatus: 'Clear',
        timeOfDay: DateTime.now(),
      );

      return RiderModel(
        id: riderId,
        name: 'Rahul Singh',
        photoUrl: 'https://i.pravatar.cc/150?u=rahul',
        rating: 4.9,
        completedDeliveries: 1240,
        vehicleNumber: 'RJ 14 VS 2024',
        vehicleType: 'Electric Scooter',
        currentLocation: GeoPoint(latitude: lat, longitude: lng),
        heading: progress == 1.0 ? 0 : 45.0,
        currentSpeedKmph: 24.5 + (Random().nextDouble() * 5),
        status: progress < 0.1
            ? RiderActivityStatus.headingToStore
            : (progress > 0.9
                ? RiderActivityStatus.nearYou
                : RiderActivityStatus.onTheWay),
        batteryPercentage: 88 - (count ~/ 10),
        networkQuality: 'Excellent',
        distanceToDestinationKm: distanceLeft,
        etaToDestinationMinutes: eta,
        trafficScore: trafficScore,
        weatherStatus: 'Clear',
        roadQuality: 'High',

        // Task 5 Mocks
        experienceYears: 3.2,
        isHelmetVerified: true,
        isIdentityVerified: true,
        isPoliceVerified: true,
        isBackgroundVerified: true,
        partnerId: 'VP-2024-8839',
        todayDeliveries: 18,
        acceptanceRate: 99.2,
        avgDeliveryTimeMinutes: 14,
        lastActive: DateTime.now().subtract(const Duration(minutes: 2)),
        currentShift: 'Morning (6 AM - 2 PM)',
        vehicleFuelType: 'Lithium-Ion EV',
        isEV: true,
        safetyMessage: 'Rider is maintaining high hygiene standards',
        handleWithCare: true,
        temperatureControlled: true,
        aiRiderScore: 9.9,
        aiSafetyScore: 9.8,
        aiDrivingBehaviour: 'Eco-Friendly & Safe',
      );
    });
  }

  @override
  Future<void> triggerVoiceUpdate(String message) async {
    // Architecture ready for Text-to-Speech integration
  }
}
