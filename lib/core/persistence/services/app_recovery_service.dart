import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../persistence_keys.dart';
import '../repositories/storage_repository.dart';
import '../../../features/tracking/providers/tracking_provider.dart';
import '../../../features/location/providers/location_provider.dart';
import '../../../features/cart/providers/cart_provider.dart';
import '../providers/persistence_providers.dart';
import '../../utils/logger.dart';

class AppRecoveryService {
  final Ref _ref;
  final StorageRepository _storage;

  AppRecoveryService(this._ref, this._storage);

  Future<void> restoreAppState() async {
    AppLogger.i('Starting App Recovery Flow...');

    try {
      // 1. Force initialize location to restore selected address from cache
      _ref.read(locationProvider.notifier).loadAddresses();

      // 2. Load Cart from persistent storage
      _ref.read(cartProvider.notifier).loadCart();

      // 3. Check for active order and restore tracking if exists
      final activeOrderId = _storage.get<String>(PersistenceKeys.activeOrderId);
      if (activeOrderId != null) {
        AppLogger.i('Restoring active tracking for Order: $activeOrderId');
        _ref.read(activeOrderIdProvider.notifier).updateId(activeOrderId);
      }

      // 4. Signal recovery complete
      _ref.read(appRecoveryProvider.notifier).state = true;
      AppLogger.i('App Recovery Flow Complete.');
    } catch (e) {
      AppLogger.e('App Recovery Error', e);
      _ref.read(appRecoveryProvider.notifier).state = true;
    }
  }
}

final appRecoveryServiceProvider = Provider<AppRecoveryService>((ref) {
  return AppRecoveryService(ref, ref.watch(localStorageProvider));
});
