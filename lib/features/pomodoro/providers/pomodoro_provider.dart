import 'dart:async';
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
  /// This is triggered either by a direct user press on the start/resume button,
  /// or automatically by the `skipPhase` method when `autoStartAfterPhaseChange` is enabled.
  void start() {
    if (state.status == PomodoroStatus.running) return;

    state = state.copyWith(status: PomodoroStatus.running);
    _startTimer();
  }

  void pause() {
    if (state.status != PomodoroStatus.running) return;

    _timer?.cancel();
    state = state.copyWith(status: PomodoroStatus.paused);
  }

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

  /// Transitions the timer to the next phase of the pomodoro cycle (e.g., from focus to a break).
  ///
  /// This method can be triggered manually by a user action or automatically when
  /// the current phase's timer completes. It determines the next phase
  /// (focus, short break, or long break) based on the current cycle count
  /// and updates the state accordingly. If `autoStartAfterPhaseChange` is enabled,
  /// it will also immediately start the timer for the new phase.
  void skipPhase() {
    _timer?.cancel();
    final settings = ref.read(appPomodoroSettingsProvider);

    int nextCycleCount = state.phase == PomodoroPhase.focus
        ? state.countThisCycle + 1
        : state.countThisCycle;
    PomodoroPhase nextPhase;
    Duration nextDuration;

    if (state.phase == PomodoroPhase.focus) {
      if (nextCycleCount % settings.cyclesBeforeLongBreak == 0) {
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

    if (settings.autoStartAfterPhaseChange) {
      start();
    }
  }

  void _tick() {
    final timeLeft =
        state.timeLeftThisPhase - const Duration(milliseconds: 100);

    if (timeLeft.isNegative) {
      skipPhase();
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
