import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/storage_repository.dart';
import '../../services/shared_pref_service.dart';
import '../../services/secure_storage_service.dart';
import '../../services/connectivity_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

final localStorageProvider = Provider<StorageRepository>((ref) {
  final prefs = ref.watch(sharedPreferencesServiceProvider);
  final secure = ref.watch(secureStorageServiceProvider);
  return StorageRepositoryImpl(prefs, secure);
});

enum OfflineStatus { online, offline }

final offlineStateProvider = StreamProvider<OfflineStatus>((ref) {
  final connectivity = ref.watch(connectivityServiceProvider);
  return connectivity.onConnectivityChanged.map((results) {
    if (results.any((r) => r != ConnectivityResult.none)) {
      return OfflineStatus.online;
    }
    return OfflineStatus.offline;
  });
});

final appRecoveryProvider = StateProvider<bool>((ref) => false);

final sessionProvider = Provider<bool>((ref) {
  // Simple check for auth token in secure storage could go here
  // For now we rely on the existing authProvider
  return false;
});
