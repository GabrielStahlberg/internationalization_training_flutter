import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internationalization_training/internationalization/translations/de_de.dart';
import 'package:internationalization_training/internationalization/translations/en_us.dart';
import 'package:internationalization_training/internationalization/translations/es_es.dart';
import 'package:internationalization_training/internationalization/translations/fr_fr.dart';
import 'package:internationalization_training/internationalization/translations/it_it.dart';
import 'package:internationalization_training/internationalization/translations/pt_br.dart';

class TranslationService extends Translations {

  /// This variable defines a default language that will be used in case
  /// of an invalid locale is selected.
  static const fallbackLocale = Locale("en", "US");

  /// Here you need to add all languages that will be available.
  static final langs = [
    "Português",
    "English",
    "Español",
    "Deutsch",
    "Italiano",
    "Français"
  ];

  /// Here you need to add all languageCode and countryCode that will be
  /// available.
  static final locales = [
    const Locale("pt", "BR"),
    const Locale("en", "US"),
    const Locale("es", "ES"),
    const Locale("de", "DE"),
    const Locale("it", "IT"),
    const Locale("fr", "FR"),
  ];

  /// Here you need to add all language maps with respective translations.
  @override
  Map<String, Map<String, String>> get keys => {
    "pt_BR": ptBR,
    "en_US": enUS,
    "es_ES": esES,
    "de_DE": deDE,
    "it_IT": itIT,
    "fr_FR": frFR,
  };

  /// This is the method that should be called to change the app language.
  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }

    return Get.locale!;
  }
}