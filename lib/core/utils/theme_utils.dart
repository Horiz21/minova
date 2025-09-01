import 'package:flutter/material.dart';

ThemeData generateTheme(Brightness brightness, Color seedColor) {
  return ThemeData(
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    ),
    appBarTheme: const AppBarTheme(elevation: 0),
    useMaterial3: true,
  );
}
