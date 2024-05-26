import 'package:flutter/material.dart';

@immutable
abstract class AppManagerState {}

class AppManagerInitial extends AppManagerState {}

class LanguageLoaded extends AppManagerState {
  final Locale locale;
  final String fontFamily;

  LanguageLoaded(this.locale, this.fontFamily);
}
