// lib/core/providers/theme_provider.dart

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppThemeMode extends _$AppThemeMode {
  Box get _settingsBox => Hive.box('settings');

  @override
  ThemeMode build() {
    final String? storedTheme = _settingsBox.get('themeMode');

    switch (storedTheme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  void setThemeMode(ThemeMode newThemeMode) {
    state = newThemeMode;
    _settingsBox.put('themeMode', newThemeMode.name);
  }
}
