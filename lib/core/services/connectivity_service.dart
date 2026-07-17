import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ConnectionStatus {
  online,
  poor,
  offline,
  reconnecting,
}

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  final _statusController = StreamController<ConnectionStatus>.broadcast();

  ConnectivityService() {
    _connectivity.onConnectivityChanged.listen(_handleConnectivityChange);
  }

  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged;

  Stream<ConnectionStatus> get statusStream => _statusController.stream;

  void _handleConnectivityChange(List<ConnectivityResult> results) {
    if (results.any((r) => r != ConnectivityResult.none)) {
      _statusController.add(ConnectionStatus.online);
    } else {
      _statusController.add(ConnectionStatus.offline);
    }
  }

  Future<bool> isConnected() async {
    final result = await _connectivity.checkConnectivity();
    return result.any((r) => r != ConnectivityResult.none);
  }

  /// architecture ready for AI network prediction
  double getConnectivityScore() {
    return 1.0; // 1.0 = perfect, 0.0 = none
  }

  void forceStatus(ConnectionStatus status) {
    _statusController.add(status);
  }
}

final connectivityServiceProvider = Provider<ConnectivityService>((ref) {
  return ConnectivityService();
});

final connectionStatusProvider = StreamProvider<ConnectionStatus>((ref) {
  return ref.watch(connectivityServiceProvider).statusStream;
});
