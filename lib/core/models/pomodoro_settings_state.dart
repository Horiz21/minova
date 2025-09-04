import 'package:flutter/material.dart';
import 'package:minova/features/pomodoro/widgets/pomodoro_display.dart';

@immutable
class PomodoroSettingsState {
  final int focusDuration;
  final int shortBreakDuration;
  final int longBreakDuration;
  final int cyclesBeforeLongBreak;
  final bool autoStartAfterPhaseChange;
  final PomodoroDisplayMode displayMode;

  const PomodoroSettingsState({
    required this.focusDuration,
    required this.shortBreakDuration,
    required this.longBreakDuration,
    required this.cyclesBeforeLongBreak,
    required this.autoStartAfterPhaseChange,
    required this.displayMode,
  });

  PomodoroSettingsState copyWith({
    int? focusDuration,
    int? shortBreakDuration,
    int? longBreakDuration,
    int? cyclesBeforeLongBreak,
    bool? autoStartAfterPhaseChange,
    PomodoroDisplayMode? displayMode,
  }) {
    return PomodoroSettingsState(
      focusDuration: focusDuration ?? this.focusDuration,
      shortBreakDuration: shortBreakDuration ?? this.shortBreakDuration,
      longBreakDuration: longBreakDuration ?? this.longBreakDuration,
      cyclesBeforeLongBreak:
          cyclesBeforeLongBreak ?? this.cyclesBeforeLongBreak,
      autoStartAfterPhaseChange:
          autoStartAfterPhaseChange ?? this.autoStartAfterPhaseChange,
      displayMode: displayMode ?? this.displayMode,
    );
  }
}
