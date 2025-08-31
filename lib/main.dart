import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minova/common/theme/theme.dart';
import 'package:minova/core/providers/language_provider.dart';
import 'package:minova/gen/strings.g.dart';
import 'package:minova/features/settings/screens/settings_screen.dart';

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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: t.app.title,
      locale: locale,
      theme: minovaLightTheme,
      darkTheme: minovaDarkTheme,
      themeMode: ThemeMode.system,
      home: const MinovaHomePage(),
    );
  }
}

class MinovaHomePage extends StatelessWidget {
  const MinovaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text(t.app.title),
      ),
      body: Center(child: Text(t.app.slogan)),
    );
  }
}
