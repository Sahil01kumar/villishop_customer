import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class NetworkManager {
  Future<bool> get isConnected;
  Stream<bool> get onConnectivityChanged;
}

class NetworkManagerImpl implements NetworkManager {
  final Connectivity _connectivity;
  final InternetConnectionChecker _internetChecker;

  NetworkManagerImpl(this._connectivity, this._internetChecker);

  @override
  Future<bool> get isConnected async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) return false;
    return await _internetChecker.hasConnection;
  }

  @override
  Stream<bool> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged.asyncMap((event) async {
        if (event.contains(ConnectivityResult.none)) return false;
        return await _internetChecker.hasConnection;
      });
}

final networkManagerProvider = Provider<NetworkManager>((ref) {
  return NetworkManagerImpl(Connectivity(), InternetConnectionChecker());
});
