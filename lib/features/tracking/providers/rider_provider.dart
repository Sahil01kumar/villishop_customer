import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/rider_model.dart';
import '../domain/repositories/rider_repository.dart';
import '../data/repositories/rider_repository_impl.dart';

final riderRepositoryProvider = Provider<RiderRepository>((ref) {
  return RiderRepositoryImpl();
});

final riderStreamProvider =
    StreamProvider.family<RiderModel, String>((ref, riderId) {
  final repository = ref.watch(riderRepositoryProvider);
  return repository.getRiderStream(riderId);
});

enum CameraMode { overview, followRider, followCustomer, autoFit }

final cameraModeProvider =
    StateProvider<CameraMode>((ref) => CameraMode.followRider);
