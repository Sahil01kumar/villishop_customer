import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SharedPreferenceService {
  final SharedPreferences _prefs;

  SharedPreferenceService(this._prefs);

  Future<void> setBool(String key, bool value) async =>
      await _prefs.setBool(key, value);
  bool? getBool(String key) => _prefs.getBool(key);

  Future<void> setString(String key, String value) async =>
      await _prefs.setString(key, value);
  String? getString(String key) => _prefs.getString(key);

  Future<void> setInt(String key, int value) async =>
      await _prefs.setInt(key, value);
  int? getInt(String key) => _prefs.getInt(key);

  Future<void> remove(String key) async => await _prefs.remove(key);
  Future<void> clear() async => await _prefs.clear();
}

final sharedPreferencesServiceProvider =
    Provider<SharedPreferenceService>((ref) {
  throw UnimplementedError(
      'Initialize SharedPreferences in main.dart and override this provider');
});
