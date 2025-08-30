import 'package:flutter/material.dart';
import 'package:minova/common/theme/colors.dart';

final minovaLightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: minovaRed,
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(elevation: 0),
  useMaterial3: true,
);

final minovaDarkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: minovaRed,
    brightness: Brightness.dark,
  ),
  appBarTheme: const AppBarTheme(elevation: 0),
  useMaterial3: true,
);
