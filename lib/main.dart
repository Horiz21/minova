import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minova/core/utils/theme_utils.dart';
import 'package:minova/core/providers/language_provider.dart';
import 'package:minova/core/providers/theme_provider.dart';
import 'package:minova/features/pomodoro/screens/pomodoro_screen.dart';
import 'package:minova/gen/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('settings');

  runApp(ProviderScope(child: TranslationProvider(child: const MinovaApp())));
}

class MinovaApp extends ConsumerWidget {
  const MinovaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(currentLocaleProvider);
    final themeMode = ref.watch(appThemeModeProvider);
    final themeColor = ref.watch(appThemeColorProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: t.app.title,
      locale: locale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: generateTheme(Brightness.light, themeColor.color),
      darkTheme: generateTheme(Brightness.dark, themeColor.color),
      themeMode: themeMode,
      home: const PomodoroScreen(),
    );
  }
}
