import 'dart:convert';
import '../../../core/services/shared_pref_service.dart';
import '../../../core/services/secure_storage_service.dart';

abstract class StorageRepository {
  Future<void> save(String key, dynamic value);
  T? get<T>(String key);
  Future<void> delete(String key);
  Future<void> clear();

  // Secure Storage for sensitive data
  Future<void> saveSecure(String key, String value);
  Future<String?> getSecure(String key);
  Future<void> deleteSecure(String key);
}

class StorageRepositoryImpl implements StorageRepository {
  final SharedPreferenceService _prefs;
  final SecureStorageService _secureStorage;

  StorageRepositoryImpl(this._prefs, this._secureStorage);

  @override
  Future<void> save(String key, dynamic value) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else {
      await _prefs.setString(key, jsonEncode(value));
    }
  }

  @override
  T? get<T>(String key) {
    if (T == String) {
      return _prefs.getString(key) as T?;
    } else if (T == bool) {
      return _prefs.getBool(key) as T?;
    } else if (T == int) {
      return _prefs.getInt(key) as T?;
    } else {
      final value = _prefs.getString(key);
      if (value == null) return null;
      try {
        return jsonDecode(value) as T?;
      } catch (e) {
        return null;
      }
    }
  }

  @override
  Future<void> delete(String key) async {
    await _prefs.remove(key);
  }

  @override
  Future<void> clear() async {
    await _prefs.clear();
    await _secureStorage.deleteAll();
  }

  @override
  Future<void> saveSecure(String key, String value) async {
    await _secureStorage.write(key, value);
  }

  @override
  Future<String?> getSecure(String key) async {
    return await _secureStorage.read(key);
  }

  @override
  Future<void> deleteSecure(String key) async {
    await _secureStorage.delete(key);
  }
}
