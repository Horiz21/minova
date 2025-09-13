import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minova/core/providers/pomodoro_settings_provider.dart';
import 'package:minova/features/pomodoro/models/pomodoro_models.dart';
import 'package:minova/features/pomodoro/providers/pomodoro_provider.dart';
import 'package:minova/features/pomodoro/widgets/pomodoro_widget.dart';
import 'package:minova/features/settings/screens/settings_screen.dart';
import 'package:minova/gen/strings.g.dart';

class PomodoroScreen extends ConsumerWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pomodoroState = ref.watch(pomodoroProvider);
    final pomodoroSettingsState = ref.watch(appPomodoroSettingsProvider);
    final t = Translations.of(context);

    final phaseText = {
      PomodoroPhase.focus: t.pomodoro.phases.focus,
      PomodoroPhase.shortBreak: t.pomodoro.phases.shortBreak,
      PomodoroPhase.longBreak: t.pomodoro.phases.longBreak,
    }[pomodoroState.phase]!;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          },
          icon: Icon(Icons.settings),
        ),
        title: Text(phaseText),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: PomodoroWidget(
              displayMode: pomodoroSettingsState.pomodoroStyle,
              timeLeft: pomodoroState.timeLeftThisPhase,
              totalDuration: pomodoroState.totalDurationThisPhase,
              isRunning: pomodoroState.status == PomodoroStatus.running,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  child: Text(t.pomodoro.controls.resetPhase),
                  onPressed: () => ref.read(pomodoroProvider.notifier).stop(),
                ),
                TextButton(
                  child: Text(
                    pomodoroState.status == PomodoroStatus.running
                        ? t.pomodoro.controls.pause
                        : pomodoroState.status == PomodoroStatus.paused
                        ? t.pomodoro.controls.resume
                        : t.pomodoro.controls.start,
                  ),
                  onPressed: () {
                    final notifier = ref.read(pomodoroProvider.notifier);
                    if (pomodoroState.status == PomodoroStatus.running) {
                      notifier.pause();
                    } else {
                      notifier.start();
                    }
                  },
                ),
                TextButton(
                  child: Text(t.pomodoro.controls.skipPhase),
                  onPressed: () =>
                      ref.read(pomodoroProvider.notifier).skipPhase(),
                ),
                TextButton(
                  child: Text(t.pomodoro.controls.stop),
                  onPressed: () => ref.read(pomodoroProvider.notifier).stop(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
