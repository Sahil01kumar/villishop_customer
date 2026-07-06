import '../../../core/services/secure_storage_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionManager {
  final SecureStorageService _secureStorage;
  static const String _tokenKey = 'auth_token';
  static const String _userKey = 'user_data';

  SessionManager(this._secureStorage);

  Future<void> saveToken(String token) async {
    await _secureStorage.write(_tokenKey, token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(_tokenKey);
  }

  Future<void> clearSession() async {
    await _secureStorage.delete(_tokenKey);
    await _secureStorage.delete(_userKey);
  }

  Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null;
  }
}

final sessionManagerProvider = Provider<SessionManager>((ref) {
  return SessionManager(ref.watch(secureStorageServiceProvider));
});
