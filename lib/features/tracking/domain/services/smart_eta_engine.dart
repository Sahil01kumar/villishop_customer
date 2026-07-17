import 'dart:math';

class SmartETAEngine {
  /// AI ETA Engine V2: Multi-factor arrival prediction.
  static int calculate({
    required double distanceKm,
    required double avgSpeedKmph,
    required double trafficScore, // 1.0 = clear, 2.5 = heavy
    required String weatherStatus,
    required DateTime timeOfDay,
    double roadQualityMultiplier = 1.0,
    int historicalDelayMinutes = 0,
    int storeProcessingDelayMinutes = 0,
  }) {
    if (distanceKm <= 0) return 1;

    // Base travel time calculation
    final effectiveSpeed = avgSpeedKmph > 0 ? avgSpeedKmph : 20.0;
    double travelTimeMinutes = (distanceKm / effectiveSpeed) * 60;

    // 1. Environmental & Traffic Scaling
    travelTimeMinutes *= trafficScore;
    travelTimeMinutes *= roadQualityMultiplier;

    // 2. Dynamic Weather Impact
    switch (weatherStatus.toLowerCase()) {
      case 'rain':
        travelTimeMinutes *= 1.35;
        break;
      case 'storm':
        travelTimeMinutes *= 2.0;
        break;
      case 'fog':
        travelTimeMinutes *= 1.6;
        break;
      case 'heat':
        travelTimeMinutes *= 1.1;
        break;
      default:
        break;
    }

    // 3. Temporal Load (Peak Hours)
    final hour = timeOfDay.hour;
    if ((hour >= 8 && hour <= 10) || (hour >= 18 && hour <= 21)) {
      travelTimeMinutes *= 1.25;
    }

    // 4. Infrastructure & Contextual Additives
    travelTimeMinutes += (distanceKm * 0.75); // Intersection/Signal factor
    travelTimeMinutes += historicalDelayMinutes;
    travelTimeMinutes += storeProcessingDelayMinutes;

    return max(1, travelTimeMinutes.ceil());
  }

  static String getTrafficLevel(double score) {
    if (score < 1.3) return 'Low Traffic';
    if (score < 1.9) return 'Moderate Traffic';
    return 'Heavy Traffic';
  }

  static String getTrafficIcon(double score) {
    if (score < 1.3) return '🟢';
    if (score < 1.9) return '🟡';
    return '🔴';
  }
}
