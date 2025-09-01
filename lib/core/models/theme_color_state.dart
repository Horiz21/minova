import 'package:flutter/material.dart';

@immutable
class ThemeColorState {
  final String id;
  final Color color;

  const ThemeColorState({required this.id, required this.color});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeColorState &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          color == other.color;

  @override
  int get hashCode => id.hashCode ^ color.hashCode;
}
