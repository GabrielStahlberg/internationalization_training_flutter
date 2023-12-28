import 'package:flutter/material.dart';
import 'package:internationalization_training/internationalization/translation_service.dart';
import 'package:internationalization_training/language.dart';

class LanguageAction extends StatelessWidget {
  const LanguageAction({super.key});

  PopupMenuItem<String> buildMenuItem(Language language) {
    return PopupMenuItem<String> (
      value: language.id,
      child: ListTile(
          leading: Text(language.flag, style: const TextStyle(fontSize: 20)),
          title: Text(language.name),
          onTap: () {
            TranslationService().changeLocale(language.name);
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.language, color: Colors.black54),
      itemBuilder: (context) {
        return Language.languageList().map((language) {
          return buildMenuItem(language);
        }).toList();
      }
    );
  }
}
