import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minova/core/models/pomodoro_settings_state.dart';
import 'package:minova/core/providers/language_provider.dart';
import 'package:minova/core/providers/pomodoro_settings_provider.dart';
import 'package:minova/core/providers/theme_provider.dart';
import 'package:minova/features/pomodoro/widgets/pomodoro_widget.dart';
import 'package:minova/gen/strings.g.dart';
import 'package:minova/gen/language_constants.g.dart';
import 'package:minova/gen/theme_constants.g.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final currentLanguageName = t.meta.languageName;
    final currentThemeMode = ref.watch(appThemeModeProvider);
    final currentThemeColor = ref.watch(appThemeColorProvider);
    final currentPomodoroSettings = ref.watch(appPomodoroSettingsProvider);

    final Uri githubUri = Uri.parse('https://github.com/Horiz21/minova');
    final Uri emailUri = Uri(scheme: 'mailto', path: 'htl.me@outlook.com');

    return Scaffold(
      appBar: AppBar(title: Text(t.settings.title)),
      body: ListView(
        children: [
          _SectionHeader(title: t.settings.groups.general.title),
          ListTile(
            title: Text(t.settings.groups.general.items.themeMode.label),
            subtitle: Text(
              t.settings.groups.general.items.themeMode.options[currentThemeMode
                  .name]!,
            ),
            trailing: const Icon(Icons.brightness_medium_outlined),
            onTap: () => _showThemeModeDialog(context, ref),
          ),
          ListTile(
            title: Text(t.settings.groups.general.items.themeColor.label),
            subtitle: Text(
              t
                  .settings
                  .groups
                  .general
                  .items
                  .themeColor
                  .options[currentThemeColor.id]!,
            ),
            trailing: const Icon(Icons.color_lens_outlined),
            onTap: () => _showThemeColorDialog(context, ref),
          ),
          ListTile(
            title: Text(t.settings.groups.general.items.language.label),
            subtitle: Text(currentLanguageName),
            trailing: const Icon(Icons.language),
            onTap: () => _showLanguageDialog(context, ref),
          ),

          _SectionHeader(title: t.settings.groups.pomodoro.title),
          ListTile(
            title: Text(t.settings.groups.pomodoro.items.durations.label),
            subtitle: Text(
              "${currentPomodoroSettings.focusDuration} / "
              "${currentPomodoroSettings.shortBreakDuration} / "
              "${currentPomodoroSettings.longBreakDuration} / "
              "${t.settings.groups.pomodoro.items.longBreakInterval.description(n: currentPomodoroSettings.longBreakInterval)}",
            ),
            trailing: const Icon(Icons.timelapse),
            onTap: () => _showPomodoroTimingDialog(context, ref),
          ),
          ListTile(
            title: Text(t.settings.groups.pomodoro.items.autoStartPhases.label),
            subtitle: Text(
              t
                  .settings
                  .groups
                  .pomodoro
                  .items
                  .autoStartPhases
                  .options[currentPomodoroSettings.autoStartPhaseMode.name]!
                  .label,
            ),
            trailing: const Icon(Icons.play_circle_outline),
            onTap: () => _showAutoStartPhaseDialog(context, ref),
          ),
          ListTile(
            title: Text(t.settings.groups.pomodoro.items.style.label),
            subtitle: Text(
              t
                  .settings
                  .groups
                  .pomodoro
                  .items
                  .style
                  .options[currentPomodoroSettings.pomodoroStyle.name]!,
            ),
            trailing: const Icon(Icons.style),
            onTap: () => _showPomodoroStyleDialog(context, ref),
          ),

          _SectionHeader(title: t.settings.groups.about.title),
          // ListTile(
          //   title: Text(t.settings.groups.about.page),
          //   trailing: const Icon(Icons.code),
          //   onTap: null,
          // ),
          ListTile(
            title: Text(t.settings.groups.about.links.gitHub),
            trailing: const Icon(Icons.open_in_browser),
            onTap: () async {
              if (await canLaunchUrl(githubUri)) {
                await launchUrl(githubUri);
              } else {
                throw 'Could not launch $githubUri';
              }
            },
          ),
          ListTile(
            title: Text(t.settings.groups.about.links.email),
            trailing: const Icon(Icons.mail),
            onTap: () async {
              if (await canLaunchUrl(emailUri)) {
                await launchUrl(emailUri);
              } else {
                throw 'Could not launch $emailUri';
              }
            },
          ),
        ],
      ),
    );
  }
}

void _showThemeModeDialog(BuildContext context, WidgetRef ref) {
  final t = Translations.of(context);
  final currentThemeMode = ref.read(appThemeModeProvider);

  final themeModes = [
    {
      'mode': ThemeMode.light,
      'name': t.settings.groups.general.items.themeMode.options['light'],
      'icon': Icons.light_mode_outlined,
    },
    {
      'mode': ThemeMode.dark,
      'name': t.settings.groups.general.items.themeMode.options['dark'],
      'icon': Icons.dark_mode_outlined,
    },
    {
      'mode': ThemeMode.system,
      'name': t.settings.groups.general.items.themeMode.options['system'],
      'icon': Icons.brightness_auto_outlined,
    },
  ];

  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(t.settings.groups.general.items.themeMode.label),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: themeModes.map((item) {
              final themeMode = item['mode'] as ThemeMode;
              final themeName = item['name'] as String;
              final themeIcon = item['icon'] as IconData;
              final isSelected = currentThemeMode == themeMode;

              return ListTile(
                leading: Icon(themeIcon),
                title: Text(themeName),
                trailing: isSelected ? Icon(Icons.check) : null,
                onTap: () {
                  ref
                      .read(appThemeModeProvider.notifier)
                      .setThemeMode(themeMode);
                  Navigator.of(dialogContext).pop();
                },
              );
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(t.common.cancel),
          ),
        ],
      );
    },
  );
}

void _showThemeColorDialog(BuildContext context, WidgetRef ref) {
  final t = Translations.of(context);
  final currentThemeColor = ref.read(appThemeColorProvider);

  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(t.settings.groups.general.items.themeColor.label),
        contentPadding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        content: SizedBox(
          width: double.maxFinite,
          child: Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            children: kAppThemeColors.values.map((themeColor) {
              final isSelected = currentThemeColor.id == themeColor.id;
              final colorDisplayName = t
                  .settings
                  .groups
                  .general
                  .items
                  .themeColor
                  .options[themeColor.id]!;
              return ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: themeColor.color,
                    shape: BoxShape.circle,
                  ),
                ),
                title: Text(colorDisplayName),
                trailing: isSelected ? const Icon(Icons.check) : null,
                onTap: () {
                  ref
                      .read(appThemeColorProvider.notifier)
                      .setThemeColor(themeColor.id, themeColor.color);
                  Navigator.of(dialogContext).pop();
                },
              );
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(t.common.cancel),
          ),
        ],
      );
    },
  );
}

void _showLanguageDialog(BuildContext context, WidgetRef ref) {
  final t = Translations.of(context);
  final currentLocale = ref.read(currentLocaleProvider);

  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(t.settings.groups.general.items.language.label),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: kLanguageMap.entries.map((entry) {
              final langCode = entry.key;
              final langName = entry.value;
              final isSelected = currentLocale.toString() == langCode;

              return ListTile(
                title: Text(langName['languageName']!),
                trailing: isSelected ? Icon(Icons.check) : null,
                onTap: () {
                  final codeParts = langCode.split('_');
                  final newLocale = Locale(
                    codeParts[0],
                    codeParts.length > 1 ? codeParts[1] : null,
                  );

                  ref.read(currentLocaleProvider.notifier).setLocale(newLocale);

                  Navigator.of(dialogContext).pop();
                },
              );
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(t.common.cancel),
          ),
        ],
      );
    },
  );
}

void _showPomodoroTimingDialog(BuildContext context, WidgetRef ref) {
  final t = Translations.of(context);
  final settings = ref.read(appPomodoroSettingsProvider);

  final focusCtrl = TextEditingController(
    text: settings.focusDuration.toString(),
  );
  final shortBreakCtrl = TextEditingController(
    text: settings.shortBreakDuration.toString(),
  );
  final longBreakCtrl = TextEditingController(
    text: settings.longBreakDuration.toString(),
  );
  final cyclesCtrl = TextEditingController(
    text: settings.longBreakInterval.toString(),
  );

  AutoStartPhaseMode autoStart = settings.autoStartPhaseMode;

  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.settings.groups.pomodoro.items.durations.label),
                Tooltip(
                  message: t.common.resetToDefault,
                  child: IconButton(
                    icon: const Icon(Icons.replay),
                    onPressed: () {
                      setDialogState(() {
                        focusCtrl.text = '25';
                        shortBreakCtrl.text = '5';
                        longBreakCtrl.text = '15';
                        cyclesCtrl.text = '4';
                        autoStart = AutoStartPhaseMode.always;
                      });
                    },
                  ),
                ),
              ],
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Table(
                    columnWidths: const {
                      0: FlexColumnWidth(),
                      1: IntrinsicColumnWidth(),
                    },
                    children: [
                      _buildDurationInputRow(
                        t.pomodoro.phases.focus,
                        focusCtrl,
                        t.common.minutes,
                      ),
                      _buildDurationInputRow(
                        t.pomodoro.phases.shortBreak,
                        shortBreakCtrl,
                        t.common.minutes,
                      ),
                      _buildDurationInputRow(
                        t.pomodoro.phases.longBreak,
                        longBreakCtrl,
                        t.common.minutes,
                      ),
                      _buildDurationInputRow(
                        t
                            .settings
                            .groups
                            .pomodoro
                            .items
                            .longBreakInterval
                            .label,
                        cyclesCtrl,
                        t.common.cycles,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(t.common.cancel),
              ),
              TextButton(
                onPressed: () {
                  final newSettings = PomodoroSettingsState(
                    focusDuration:
                        int.tryParse(focusCtrl.text) ?? settings.focusDuration,
                    shortBreakDuration:
                        int.tryParse(shortBreakCtrl.text) ??
                        settings.shortBreakDuration,
                    longBreakDuration:
                        int.tryParse(longBreakCtrl.text) ??
                        settings.longBreakDuration,
                    longBreakInterval:
                        int.tryParse(cyclesCtrl.text) ??
                        settings.longBreakInterval,
                    autoStartPhaseMode: autoStart,
                    pomodoroStyle: settings.pomodoroStyle,
                  );
                  ref
                      .read(appPomodoroSettingsProvider.notifier)
                      .updateSettings(newSettings);
                  Navigator.pop(context);
                },
                child: Text(t.common.save),
              ),
            ],
          );
        },
      );
    },
  );
}

TableRow _buildDurationInputRow(
  String label,
  TextEditingController controller,
  String unitText,
) {
  return TableRow(
    children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Text(label),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 48,
              child: TextField(
                controller: controller,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            const SizedBox(width: 8),
            Text(unitText),
          ],
        ),
      ),
    ],
  );
}

void _showAutoStartPhaseDialog(BuildContext context, WidgetRef ref) {
  final t = Translations.of(context);
  final settings = ref.read(appPomodoroSettingsProvider);
  final currentMode = settings.autoStartPhaseMode;

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(t.settings.groups.pomodoro.items.autoStartPhases.label),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: AutoStartPhaseMode.values.map((mode) {
              final option = t
                  .settings
                  .groups
                  .pomodoro
                  .items
                  .autoStartPhases
                  .options[mode.name]!;
              final modeLabel = option.label;
              final modeDescription = option.description;
              final isSelected = currentMode == mode;

              return ListTile(
                title: Text(modeLabel),
                subtitle: Text(modeDescription),
                trailing: isSelected ? const Icon(Icons.check) : null,
                onTap: () {
                  ref
                      .read(appPomodoroSettingsProvider.notifier)
                      .updateAutoStartMode(mode);
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(t.common.cancel),
          ),
        ],
      );
    },
  );
}

void _showPomodoroStyleDialog(BuildContext context, WidgetRef ref) {
  final t = Translations.of(context);
  final currentMode = ref.read(appPomodoroSettingsProvider).pomodoroStyle;

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(t.settings.groups.pomodoro.items.style.label),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: PomodoroStyle.values.map((mode) {
              final modeName =
                  t.settings.groups.pomodoro.items.style.options[mode.name]!;
              final isSelected = currentMode == mode;
              return ListTile(
                title: Text(modeName),
                trailing: isSelected ? const Icon(Icons.check) : null,
                onTap: () {
                  ref
                      .read(appPomodoroSettingsProvider.notifier)
                      .updateDisplayMode(mode);
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        ),
      );
    },
  );
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
