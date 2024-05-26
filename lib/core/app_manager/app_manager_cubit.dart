import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:x_sport/main.dart';

import 'app_manager_state.dart';

class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit() : super(AppManagerInitial());

  static const String _languageCodeKey = 'language_code';
  static const String _fontFamilyKey = 'font_family';
  late bool isRtl;

  Future<void> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final String? languageCode = prefs.getString(_languageCodeKey);
    final String? fontFamily = prefs.getString(_fontFamilyKey);
    if (languageCode != null) {
      final Locale locale = Locale(languageCode);
      emit(LanguageLoaded(locale, fontFamily ?? 'El Messiri'));
    } else {
      emit(LanguageLoaded(const Locale('ar'), 'El Messiri'));
    }
  }

  Future<void> switchLanguage(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    String fontFamily;
    if (locale.languageCode == 'ar') {
      fontFamily = 'El Messiri';
      isRtl = true;
    } else {
      fontFamily = 'Vazirmatn';
      isRtl = false;
    }
    await prefs.setString(_languageCodeKey, locale.languageCode);
    await prefs.setString(_fontFamilyKey, fontFamily);
    emit(LanguageLoaded(locale, fontFamily));
    EasyLocalization.of(navigatorKey.currentContext!)!.setLocale(locale);
  }
}
