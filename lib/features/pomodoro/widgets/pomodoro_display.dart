import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum PomodoroDisplayMode {
  countdownTimer,
  progressBar,
  currentTime,
  breathingBall,
  blank,
}

class PomodoroDisplay extends StatefulWidget {
  final PomodoroDisplayMode displayMode;
  final Duration timeLeft;
  final Duration totalDuration;
  final bool isRunning;

  const PomodoroDisplay({
    super.key,
    required this.displayMode,
    required this.timeLeft,
    required this.totalDuration,
    required this.isRunning,
  });

  @override
  State<PomodoroDisplay> createState() => _PomodoroDisplayState();
}

class _PomodoroDisplayState extends State<PomodoroDisplay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _breathingController;
  Timer? _currentTimeTimer;
  late DateTime _now;

  @override
  void initState() {
    super.initState();
    _breathingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    _now = DateTime.now();

    if (widget.displayMode == PomodoroDisplayMode.currentTime) {
      _startCurrentTimeTimer();
    }

    if (widget.isRunning) {
      _breathingController.repeat(reverse: true);
    }
  }

  @override
  void didUpdateWidget(covariant PomodoroDisplay oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isRunning != oldWidget.isRunning) {
      if (widget.isRunning) {
        _breathingController.repeat(reverse: true);
      } else {
        _breathingController.stop();
      }
    }

    if (widget.displayMode != oldWidget.displayMode) {
      if (widget.displayMode == PomodoroDisplayMode.currentTime) {
        _startCurrentTimeTimer();
      } else {
        _stopCurrentTimeTimer();
      }
    }
  }

  @override
  void dispose() {
    _breathingController.dispose();
    _currentTimeTimer?.cancel();
    super.dispose();
  }

  void _startCurrentTimeTimer() {
    _currentTimeTimer?.cancel();
    _currentTimeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _now = DateTime.now();
        });
      }
    });
  }

  void _stopCurrentTimeTimer() {
    _currentTimeTimer?.cancel();
    _currentTimeTimer = null;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Center(child: _buildDisplayMode()),
    );
  }

  Widget _buildDisplayMode() {
    switch (widget.displayMode) {
      case PomodoroDisplayMode.countdownTimer:
        return _buildCountdownTimer(key: const ValueKey('countdownTimer'));
      case PomodoroDisplayMode.progressBar:
        return _buildProgressBar(key: const ValueKey('progressBar'));
      case PomodoroDisplayMode.currentTime:
        return _buildCurrentTime(key: const ValueKey('currentTime'));
      case PomodoroDisplayMode.breathingBall:
        return _buildBreathingBall(key: const ValueKey('breathingBall'));
      case PomodoroDisplayMode.blank:
        return const SizedBox.shrink(key: ValueKey('blank'));
    }
  }

  Widget _buildCountdownTimer({Key? key}) {
    final duration = widget.timeLeft.isNegative
        ? Duration.zero
        : widget.timeLeft;
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');

    final textStyle = Theme.of(context).textTheme.displayLarge?.copyWith(
      fontFamily: "MartianMono",
      fontWeight: FontWeight.w700,
    );

    return Text('$minutes:$seconds', key: key, style: textStyle);
  }

  Widget _buildProgressBar({Key? key}) {
    final totalSeconds = widget.totalDuration.inSeconds;
    final leftSeconds = widget.timeLeft.inSeconds;
    final progress = totalSeconds > 0
        ? (totalSeconds - leftSeconds) / totalSeconds
        : 0.0;

    return SizedBox(
      width: 120,
      height: 120,
      child: CircularProgressIndicator(
        value: progress,
        strokeWidth: 16,
        backgroundColor: Theme.of(context).primaryColor.withAlpha(127),
        valueColor: AlwaysStoppedAnimation<Color>(
          Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  Widget _buildCurrentTime({Key? key}) {
    final formattedTime = DateFormat('HH:mm:ss').format(_now);
    final textStyle = Theme.of(context).textTheme.displayLarge?.copyWith(
      fontFamily: "MartianMono",
      fontWeight: FontWeight.w700,
    );

    return Text(formattedTime, key: key, style: textStyle);
  }

  Widget _buildBreathingBall({Key? key}) {
    return ScaleTransition(
      key: key,
      scale: Tween(begin: 1.0, end: 1.2).animate(
        CurvedAnimation(parent: _breathingController, curve: Curves.easeInOut),
      ),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
