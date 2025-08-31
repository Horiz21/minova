import 'dart:async';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:minova/gen/strings.g.dart';

part 'language_provider.g.dart';

@riverpod
class CurrentLocale extends _$CurrentLocale {
  StreamSubscription? _sub;

  @override
  Locale build() {
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
    LocaleSettings.setLocaleRaw(newLocale.toString());
  }
}
