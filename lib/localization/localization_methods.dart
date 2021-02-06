import 'package:coronavirus/localization/set_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String getTranslated(BuildContext context, String key) {
  return SetLocalization.of(context).getTranslateValue(key);
}

String getLangCode(BuildContext context) {
  return SetLocalization.of(context).getCurrentCode();
}

const String ENGLLISH = 'en';
const String ARABIC = 'ar';

const String LANG_code = 'LANG_code';

Future<Locale> setLocal(String languageCode) async {
  SharedPreferences _preferences = await  SharedPreferences.getInstance();
  await _preferences.setString(LANG_code, languageCode);
  return _locale(languageCode);
}

Locale _locale(String langCode) {
  Locale _temp;
  switch (langCode) {
    case ENGLLISH:
      _temp = Locale(langCode, 'US');
      break;
    case ARABIC:
      _temp = Locale(langCode, 'EG');
      break;
    default:
      _temp = Locale(langCode, 'US');
      break;
  }
  return _temp;
}

Future<Locale> getLocale() async {
  SharedPreferences _preferences = await  SharedPreferences.getInstance();
  String languageCode = _preferences.getString(LANG_code) ?? ENGLLISH;
  return _locale(languageCode);
}