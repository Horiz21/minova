import 'package:hive_flutter/hive_flutter.dart';
import 'package:minova/core/models/pomodoro_settings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pomodoro_settings_provider.g.dart';

@riverpod
class AppPomodoroSettings extends _$AppPomodoroSettings {
  Box get _settingsBox => Hive.box('settings');

  @override
  PomodoroSettingsState build() {
    return PomodoroSettingsState(
      focusDuration: _settingsBox.get(
        'pomodoroFocusDuration',
        defaultValue: 25,
      ),
      shortBreakDuration: _settingsBox.get(
        'pomodoroShortBreakDuration',
        defaultValue: 5,
      ),
      longBreakDuration: _settingsBox.get(
        'pomodoroLongBreakDuration',
        defaultValue: 15,
      ),
      cyclesBeforeLongBreak: _settingsBox.get(
        'pomodoroCyclesBeforeLongBreak',
        defaultValue: 4,
      ),
      autoStartAfterPhaseChange: _settingsBox.get(
        'pomodoroAutoStartAfterPhaseChange',
        defaultValue: true,
      ),
    );
  }

  void updateSettings(PomodoroSettingsState newSettings) {
    _settingsBox.put('pomodoroFocusDuration', newSettings.focusDuration);
    _settingsBox.put(
      'pomodoroShortBreakDuration',
      newSettings.shortBreakDuration,
    );
    _settingsBox.put(
      'pomodoroLongBreakDuration',
      newSettings.longBreakDuration,
    );
    _settingsBox.put(
      'pomodoroCyclesBeforeLongBreak',
      newSettings.cyclesBeforeLongBreak,
    );
    _settingsBox.put(
      'pomodoroAutoStartAfterPhaseChange',
      newSettings.autoStartAfterPhaseChange,
    );
    state = newSettings;
  }
}
