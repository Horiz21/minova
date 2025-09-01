import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minova/core/models/theme_color_state.dart';
import 'package:minova/gen/theme_constants.g.dart';
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

@riverpod
class AppThemeColor extends _$AppThemeColor {
  Box get _settingsBox => Hive.box('settings');

  @override
  ThemeColorState build() {
    final String? storedColorId = _settingsBox.get('themeColorId');

    final String colorId = storedColorId ?? 'everflame';
    final Color color = kAppThemeColors[colorId]!.color;

    return ThemeColorState(id: colorId, color: color);
  }

  void setThemeColor(String colorId, Color newColor) {
    final newThemeState = ThemeColorState(id: colorId, color: newColor);
    if (state == newThemeState) return;
    state = newThemeState;
    _settingsBox.put('themeColorId', colorId);
  }
}
