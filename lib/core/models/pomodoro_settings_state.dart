import 'package:flutter/material.dart';

@immutable
class PomodoroSettingsState {
  final int focusDuration;
  final int shortBreakDuration;
  final int longBreakDuration;
  final int cyclesBeforeLongBreak;
  final bool autoStartAfterPhaseChange;

  const PomodoroSettingsState({
    required this.focusDuration,
    required this.shortBreakDuration,
    required this.longBreakDuration,
    required this.cyclesBeforeLongBreak,
    required this.autoStartAfterPhaseChange,
  });
}
