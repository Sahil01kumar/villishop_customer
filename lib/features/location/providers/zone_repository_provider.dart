import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/zone_repository.dart';
import '../data/repositories/zone_repository_impl.dart';

final zoneRepositoryProvider = Provider<ZoneRepository>((ref) {
  return ZoneRepositoryImpl();
});
