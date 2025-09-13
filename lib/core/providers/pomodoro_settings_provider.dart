import 'package:hive_flutter/hive_flutter.dart';
import 'package:minova/core/models/pomodoro_settings_state.dart';
import 'package:minova/features/pomodoro/widgets/pomodoro_widget.dart';
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
      longBreakInterval: _settingsBox.get(
        'pomodoroCyclesBeforeLongBreak',
        defaultValue: 4,
      ),
      autoStartPhaseMode:
          AutoStartPhaseMode.values[_settingsBox.get(
            'pomodoroAutoStartPhaseMode',
            defaultValue: 0,
          )],
      pomodoroStyle: PomodoroStyle
          .values[_settingsBox.get('pomodoroDisplayMode', defaultValue: 0)],
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
      'pomodoroLongBreakInterval',
      newSettings.longBreakInterval,
    );
    _settingsBox.put(
      'pomodoroAutoStartPhaseMode',
      newSettings.autoStartPhaseMode.index,
    );
    _settingsBox.put('pomodoroDisplayMode', newSettings.pomodoroStyle.index);
    state = newSettings;
  }

  void updateAutoStartMode(AutoStartPhaseMode newMode) {
    _settingsBox.put('pomodoroAutoStartPhaseMode', newMode.index);
    state = state.copyWith(autoStartPhaseMode: newMode);
  }

  void updateDisplayMode(PomodoroStyle newDisplayMode) {
    _settingsBox.put('pomodoroDisplayMode', newDisplayMode.index);
    state = state.copyWith(pomodoroStyle: newDisplayMode);
  }
}
