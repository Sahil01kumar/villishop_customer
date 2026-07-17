import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/utils/logger.dart';

class SocketService {
  io.Socket? _socket;
  final String _baseUrl = 'https://api.villishop.in'; // Production Base URL

  final _statusController = StreamController<String>.broadcast();
  Stream<String> get statusStream => _statusController.stream;

  void connect(String token) {
    if (_socket?.connected ?? false) return;

    _socket = io.io(_baseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
      'extraHeaders': {'Authorization': 'Bearer $token'}
    });

    _socket?.connect();

    _socket?.onConnect((_) {
      AppLogger.i('Socket Connected');
      _statusController.add('connected');
    });

    _socket?.onDisconnect((_) {
      AppLogger.w('Socket Disconnected');
      _statusController.add('disconnected');
    });

    _socket
        ?.onConnectError((data) => AppLogger.e('Socket Connect Error', data));
    _socket?.onError((data) => AppLogger.e('Socket Error', data));
  }

  void emit(String event, dynamic data) {
    if (_socket?.connected ?? false) {
      _socket?.emit(event, data);
    }
  }

  void on(String event, Function(dynamic) callback) {
    _socket?.on(event, callback);
  }

  void off(String event) {
    _socket?.off(event);
  }

  void disconnect() {
    _socket?.disconnect();
    _socket = null;
  }

  bool get isConnected => _socket?.connected ?? false;
}

final socketServiceProvider = Provider<SocketService>((ref) {
  return SocketService();
});
