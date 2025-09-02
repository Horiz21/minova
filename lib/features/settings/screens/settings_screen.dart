import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minova/core/providers/language_provider.dart';
import 'package:minova/core/providers/pomodoro_settings_provider.dart';
import 'package:minova/core/providers/theme_provider.dart';
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
            title: Text(t.settings.groups.general.themeMode),
            subtitle: Text(t.themeModes[currentThemeMode.name]!),
            trailing: const Icon(Icons.brightness_medium_outlined),
            onTap: () => _showThemeModeDialog(context, ref),
          ),
          ListTile(
            title: Text(t.settings.groups.general.themeColor),
            subtitle: Text(t.themeColors[currentThemeColor.id]!),
            trailing: const Icon(Icons.color_lens_outlined),
            onTap: () => _showColorPickerDialog(context, ref),
          ),
          ListTile(
            title: Text(t.settings.groups.general.language),
            subtitle: Text(currentLanguageName),
            trailing: const Icon(Icons.language),
            onTap: () => _showLanguageDialog(context, ref),
          ),

          _SectionHeader(title: t.settings.groups.pomodoro.title),
          ListTile(
            title: Text(t.settings.groups.pomodoro.durations.title),
            subtitle: Text(
              "${currentPomodoroSettings.focusDuration}/"
              "${currentPomodoroSettings.shortBreakDuration}/"
              "${currentPomodoroSettings.longBreakDuration}",
            ),
            trailing: const Icon(Icons.timelapse),
            onTap: null,
          ),
          ListTile(
            title: Text(t.settings.groups.pomodoro.style.title),
            subtitle: Text('TODO'), // TODO: show current style
            trailing: const Icon(Icons.style),
            onTap: null,
          ),

          _SectionHeader(title: t.settings.groups.about.title),
          // ListTile(
          //   title: Text(t.settings.groups.about.page),
          //   trailing: const Icon(Icons.code),
          //   onTap: null,
          // ),
          ListTile(
            title: Text(t.settings.groups.about.gitHub),
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
            title: Text(t.settings.groups.about.email),
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
      'name': t.themeModes['light'],
      'icon': Icons.light_mode_outlined,
    },
    {
      'mode': ThemeMode.dark,
      'name': t.themeModes['dark'],
      'icon': Icons.dark_mode_outlined,
    },
    {
      'mode': ThemeMode.system,
      'name': t.themeModes['system'],
      'icon': Icons.brightness_auto_outlined,
    },
  ];

  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(t.settings.groups.general.themeMode),
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

void _showColorPickerDialog(BuildContext context, WidgetRef ref) {
  final currentColor = ref.read(appThemeColorProvider);

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(t.settings.groups.general.themeColor),
        contentPadding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        content: SizedBox(
          width: double.maxFinite,
          child: Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            children: kAppThemeColors.values.map((themeInfo) {
              final isSelected = currentColor.id == themeInfo.id;
              final colorDisplayName = t.themeColors[themeInfo.id]!;
              return ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: themeInfo.color,
                    shape: BoxShape.circle,
                  ),
                ),
                title: Text(colorDisplayName),
                trailing: isSelected ? const Icon(Icons.check) : null,
                onTap: () {
                  ref
                      .read(appThemeColorProvider.notifier)
                      .setThemeColor(themeInfo.id, themeInfo.color);
                  Navigator.of(context).pop();
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

void _showLanguageDialog(BuildContext context, WidgetRef ref) {
  final t = Translations.of(context);
  final currentLocale = ref.read(currentLocaleProvider);

  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(t.settings.groups.general.language),
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
