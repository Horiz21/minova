import 'package:flutter/material.dart';
import 'package:minova/common/theme/theme.dart';
import 'package:minova/gen/strings.g.dart';

void main() {
  runApp(const MinovaApp());
}

class MinovaApp extends StatelessWidget {
  const MinovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    LocaleSettings.useDeviceLocale();
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(t.app.title),
      ),
      body: Center(child: Text(t.app.slogan)),
    );
  }
}
