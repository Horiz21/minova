import 'dart:async';
import 'package:minova/core/models/pomodoro_settings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:minova/core/providers/pomodoro_settings_provider.dart';
import 'package:minova/features/pomodoro/models/pomodoro_models.dart';

part 'pomodoro_provider.g.dart';

@riverpod
class Pomodoro extends _$Pomodoro {
  Timer? _timer;

  @override
  PomodoroState build() {
    final settings = ref.watch(appPomodoroSettingsProvider);
    final workDuration = Duration(minutes: settings.focusDuration);

    ref.onDispose(() => _timer?.cancel());

    return PomodoroState(
      phase: PomodoroPhase.focus,
      status: PomodoroStatus.idle,
      timeLeftThisPhase: workDuration + const Duration(milliseconds: 950),
      totalDurationThisPhase: workDuration,
      countThisCycle: 0,
    );
  }

  /// Starts or resumes the pomodoro timer.
  ///
  /// This method is called either by a direct user action or automatically
  /// by the `skipPhase` method based on the auto-start settings.
  void start() {
    if (state.status == PomodoroStatus.running) return;

    state = state.copyWith(status: PomodoroStatus.running);
    _startTimer();
  }

  /// Pauses the currently running timer.
  void pause() {
    if (state.status != PomodoroStatus.running) return;

    _timer?.cancel();
    state = state.copyWith(status: PomodoroStatus.paused);
  }

  /// Stops the timer and resets the entire pomodoro cycle to the beginning.
  void stop() {
    _timer?.cancel();
    final settings = ref.read(appPomodoroSettingsProvider);
    final workDuration = Duration(minutes: settings.focusDuration);
    state = PomodoroState(
      phase: PomodoroPhase.focus,
      status: PomodoroStatus.idle,
      timeLeftThisPhase: workDuration + const Duration(milliseconds: 950),
      totalDurationThisPhase: workDuration,
      countThisCycle: 0,
    );
  }

  /// Transitions the timer to the next phase of the pomodoro cycle.
  ///
  /// This method can be triggered manually by a user action (e.g., `skipPhase` button)
  /// or automatically when the current phase's timer completes. The `isNaturalCompletion`
  /// parameter is used to differentiate between these two triggers.
  ///
  /// It determines the next phase based on the current cycle count and updates the state.
  /// Based on the `autoStartPhaseMode` setting, it may also automatically start the
  /// timer for the new phase. For example, if the mode is `onNaturalCompletion`,
  /// the timer will only start if `isNaturalCompletion` is true.
  void skipPhase({bool isNaturalCompletion = false}) {
    _timer?.cancel();
    final settings = ref.read(appPomodoroSettingsProvider);

    int nextCycleCount = state.phase == PomodoroPhase.focus
        ? state.countThisCycle + 1
        : state.countThisCycle;
    PomodoroPhase nextPhase;
    Duration nextDuration;

    if (state.phase == PomodoroPhase.focus) {
      if (nextCycleCount % settings.longBreakInterval == 0) {
        nextPhase = PomodoroPhase.longBreak;
        nextDuration = Duration(minutes: settings.longBreakDuration);
      } else {
        nextPhase = PomodoroPhase.shortBreak;
        nextDuration = Duration(minutes: settings.shortBreakDuration);
      }
    } else {
      nextPhase = PomodoroPhase.focus;
      nextDuration = Duration(minutes: settings.focusDuration);
      if (state.phase == PomodoroPhase.longBreak) {
        nextCycleCount = 0;
      }
    }

    state = PomodoroState(
      phase: nextPhase,
      status: PomodoroStatus.idle,
      timeLeftThisPhase: nextDuration + const Duration(milliseconds: 950),
      totalDurationThisPhase: nextDuration,
      countThisCycle: nextCycleCount,
    );

    switch (settings.autoStartPhaseMode) {
      case AutoStartPhaseMode.always:
        start();
        break;
      case AutoStartPhaseMode.onNaturalCompletion:
        if (isNaturalCompletion) start();
        break;
      case AutoStartPhaseMode.never:
        break;
    }
  }

  void _tick() {
    final timeLeft =
        state.timeLeftThisPhase - const Duration(milliseconds: 100);

    if (timeLeft.isNegative) {
      skipPhase(isNaturalCompletion: true);
    } else {
      state = state.copyWith(timeLeftThisPhase: timeLeft);
    }
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(milliseconds: 100),
      (timer) => _tick(),
    );
  }
}
