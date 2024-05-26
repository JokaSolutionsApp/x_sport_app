import 'package:flutter/material.dart';

class LocalizationConfig {
  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];

  static const String path = 'assets/translations';
  static const Locale fallbackLocale = Locale('ar');
}
