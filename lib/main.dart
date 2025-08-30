import 'package:flutter/material.dart';

void main() {
  runApp(const MinovaApp());
}

class MinovaApp extends StatelessWidget {
  const MinovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minova',
      home: const MinovaHomePage(title: 'Minova'),
    );
  }
}

class MinovaHomePage extends StatelessWidget {
  const MinovaHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(child: Text("Minova Placeholder")),
    );
  }
}
