import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minova/common/theme/theme.dart';
import 'package:minova/gen/strings.g.dart';
import 'package:minova/features/settings/screens/settings_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  runApp(ProviderScope(child: TranslationProvider(child: const MinovaApp())));
}

class MinovaApp extends ConsumerWidget {
  const MinovaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: t.app.title,
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
