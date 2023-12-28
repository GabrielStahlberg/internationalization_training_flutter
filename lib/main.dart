import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internationalization_training/home_screen.dart';
import 'package:internationalization_training/internationalization/translation_service.dart';

void main() {
  runApp(const InternationalizationTrainingApp());
}

class InternationalizationTrainingApp extends StatelessWidget {
  const InternationalizationTrainingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      locale: Get.deviceLocale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService()
    );
  }
}