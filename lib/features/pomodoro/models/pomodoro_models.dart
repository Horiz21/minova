import 'package:flutter/foundation.dart';

enum PomodoroPhase { focus, shortBreak, longBreak }

enum PomodoroStatus { idle, running, paused }

@immutable
class PomodoroState {
  final PomodoroPhase phase;
  final PomodoroStatus status;
  final Duration timeLeftThisPhase;
  final Duration totalDurationThisPhase;
  final int countThisCycle;

  const PomodoroState({
    required this.phase,
    required this.status,
    required this.timeLeftThisPhase,
    required this.totalDurationThisPhase,
    required this.countThisCycle,
  });

  PomodoroState copyWith({
    PomodoroPhase? phase,
    PomodoroStatus? status,
    Duration? timeLeftThisPhase,
    Duration? totalDurationThisPhase,
    int? countThisCycle,
  }) {
    return PomodoroState(
      phase: phase ?? this.phase,
      status: status ?? this.status,
      timeLeftThisPhase: timeLeftThisPhase ?? this.timeLeftThisPhase,
      totalDurationThisPhase:
          totalDurationThisPhase ?? this.totalDurationThisPhase,
      countThisCycle: countThisCycle ?? this.countThisCycle,
    );
  }
}
