import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../persistence_keys.dart';
import 'persistence_providers.dart';

class SettingsState {
  final ThemeMode themeMode;
  final String language;

  SettingsState({this.themeMode = ThemeMode.system, this.language = 'en'});

  SettingsState copyWith({ThemeMode? themeMode, String? language}) {
    return SettingsState(
      themeMode: themeMode ?? this.themeMode,
      language: language ?? this.language,
    );
  }
}

class SettingsNotifier extends StateNotifier<SettingsState> {
  final Ref _ref;

  SettingsNotifier(this._ref) : super(SettingsState()) {
    _load();
  }

  void _load() {
    final theme =
        _ref.read(localStorageProvider).get<int>(PersistenceKeys.theme);
    final lang =
        _ref.read(localStorageProvider).get<String>(PersistenceKeys.language);

    state = state.copyWith(
      themeMode: theme != null ? ThemeMode.values[theme] : ThemeMode.system,
      language: lang ?? 'en',
    );
  }

  void setTheme(ThemeMode mode) {
    state = state.copyWith(themeMode: mode);
    _ref.read(localStorageProvider).save(PersistenceKeys.theme, mode.index);
  }

  void setLanguage(String lang) {
    state = state.copyWith(language: lang);
    _ref.read(localStorageProvider).save(PersistenceKeys.language, lang);
  }
}

final settingsProvider =
    StateNotifierProvider<SettingsNotifier, SettingsState>((ref) {
  return SettingsNotifier(ref);
});
