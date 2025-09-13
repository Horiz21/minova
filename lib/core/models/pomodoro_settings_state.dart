import 'package:flutter/material.dart';
import 'package:minova/features/pomodoro/widgets/pomodoro_widget.dart';

enum AutoStartPhaseMode { always, onNaturalCompletion, never }

@immutable
class PomodoroSettingsState {
  final int focusDuration;
  final int shortBreakDuration;
  final int longBreakDuration;
  final int longBreakInterval;
  final AutoStartPhaseMode autoStartPhaseMode;
  final PomodoroStyle pomodoroStyle;

  const PomodoroSettingsState({
    required this.focusDuration,
    required this.shortBreakDuration,
    required this.longBreakDuration,
    required this.longBreakInterval,
    required this.autoStartPhaseMode,
    required this.pomodoroStyle,
  });

  PomodoroSettingsState copyWith({
    int? focusDuration,
    int? shortBreakDuration,
    int? longBreakDuration,
    int? longBreakInterval,
    AutoStartPhaseMode? autoStartPhaseMode,
    PomodoroStyle? pomodoroStyle,
  }) {
    return PomodoroSettingsState(
      focusDuration: focusDuration ?? this.focusDuration,
      shortBreakDuration: shortBreakDuration ?? this.shortBreakDuration,
      longBreakDuration: longBreakDuration ?? this.longBreakDuration,
      longBreakInterval: longBreakInterval ?? this.longBreakInterval,
      autoStartPhaseMode: autoStartPhaseMode ?? this.autoStartPhaseMode,
      pomodoroStyle: pomodoroStyle ?? this.pomodoroStyle,
    );
  }
}
