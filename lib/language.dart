class Language {
  final String id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode);

  static List<Language> languageList() {
    return <Language> [
      Language("1", "Português", "🇧🇷", "pt"),
      Language("2", "English", "🇺🇸", "en"),
      Language("3", "Español", "🇪🇸", "es"),
      Language("4", "Deutsch", "🇩🇪", "de"),
      Language("5", "Italiano", "🇮🇹", "it"),
      Language("6", "Français", "🇫🇷", "fr")
    ];
  }
}