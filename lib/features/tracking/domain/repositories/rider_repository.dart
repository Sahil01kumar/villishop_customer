import 'package:villishop_customer/features/tracking/data/models/rider_model.dart';

abstract class RiderRepository {
  /// Stream of rider location and status updates.
  Stream<RiderModel> getRiderStream(String riderId);

  /// Architecture ready for voice commands/updates
  Future<void> triggerVoiceUpdate(String message);
}
