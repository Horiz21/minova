import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minova/core/providers/language_provider.dart';
import 'package:minova/core/providers/theme_provider.dart';
import 'package:minova/gen/strings.g.dart';
import 'package:minova/gen/language_constants.g.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final currentLanguageName = t.meta.languageName;
    final currentThemeMode = ref.watch(appThemeModeProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.settings.title)),
      body: ListView(
        children: [
          _SectionHeader(title: t.settings.groups.general.title),
          ListTile(
            title: Text(t.settings.groups.general.themeMode.title),
            trailing: SegmentedButton<ThemeMode>(
              segments: [
                ButtonSegment(
                  value: ThemeMode.light,
                  label: Text(t.settings.groups.general.themeMode.light),
                  icon: const Icon(Icons.light_mode_outlined),
                ),
                ButtonSegment(
                  value: ThemeMode.dark,
                  label: Text(t.settings.groups.general.themeMode.dark),
                  icon: const Icon(Icons.dark_mode_outlined),
                ),
                ButtonSegment(
                  value: ThemeMode.system,
                  label: Text(t.settings.groups.general.themeMode.system),
                  icon: const Icon(Icons.brightness_auto_outlined),
                ),
              ],
              selected: <ThemeMode>{currentThemeMode},
              onSelectionChanged: (Set<ThemeMode> newSelection) {
                ref
                    .read(appThemeModeProvider.notifier)
                    .setThemeMode(newSelection.first);
              },
              style: ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              showSelectedIcon: true,
            ),
          ),
          ListTile(
            title: Text(t.settings.groups.general.theme),
            trailing: const Icon(Icons.color_lens_outlined),
            onTap: null,
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
            subtitle: Text('TODO'), // TODO: show current durations
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
          ListTile(
            title: Text(t.settings.groups.about.page),
            trailing: const Icon(Icons.open_in_browser),
            onTap: null,
          ),
          ListTile(
            title: Text(t.settings.groups.about.gitHub),
            trailing: const Icon(Icons.code),
            onTap: null,
          ),
          ListTile(
            title: Text(t.settings.groups.about.email),
            trailing: const Icon(Icons.mail),
            onTap: null,
          ),
        ],
      ),
    );
  }
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
                trailing: isSelected
                    ? Icon(Icons.check, color: Theme.of(context).primaryColor)
                    : null,
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
