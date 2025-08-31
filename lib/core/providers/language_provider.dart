import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:minova/gen/strings.g.dart';

part 'language_provider.g.dart';

@riverpod
class CurrentLocale extends _$CurrentLocale {
  StreamSubscription? _sub;
  Box get _settingsBox => Hive.box('settings');

  @override
  Locale build() {
    final String? storedLocale = _settingsBox.get('locale');

    if (storedLocale != null) {
      LocaleSettings.setLocaleRaw(storedLocale, listenToDeviceLocale: false);
    }

    final stream = LocaleSettings.getLocaleStream();
    _sub = stream.listen((newSlangLocale) {
      state = newSlangLocale.flutterLocale;
    });

    ref.onDispose(() {
      _sub?.cancel();
    });

    return LocaleSettings.currentLocale.flutterLocale;
  }

  void setLocale(Locale newLocale) {
    if (state == newLocale) return;
    _settingsBox.put('locale', newLocale.toString());
    LocaleSettings.setLocaleRaw(newLocale.toString());
  }
}
