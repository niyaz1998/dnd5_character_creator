


import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get dnd => 'DnD5e';

  @override
  String get builder => 'Персонаж';

  @override
  String get library => 'Библиотека';

  @override
  String get settings => 'Настройки';

  @override
  String choiceListTitle(String type, int amount) {
    return '$type. Choose $amount from';
  }

  @override
  String get isUsedForSkills => 'Основа для навыков';

  @override
  String abbreviationIs(String abbreviation) {
    return 'Сокращение: $abbreviation';
  }

  @override
  String get startingProficiencies => 'Стартовые умения';

  @override
  String get startingEquipment => 'Стартовое снаряжение';

  @override
  String get personality => 'Личность';

  @override
  String languageType(String rarity) {
    return 'Редкость языка $rarity';
  }

  @override
  String languageScript(String script) {
    return 'Использует $script письменность';
  }

  @override
  String typicalSpeakers(String speakers) {
    return 'Список рас, говорящих на языке: $speakers';
  }

  @override
  String proficiencyGeneralType(String speakers) {
    return 'Общая категория умения: {type}';
  }

  @override
  String get classesStartsWithProficiency => 'Является стартовым умением классов(а):';

  @override
  String get noClassStartsWithProficiency => 'Не является стартовым умением ни одного класса';

  @override
  String get racesStartsWithProficiency => 'Является стартовым умением рас(ы):';

  @override
  String get noRaceStartsWithProficiency => 'Не является стартовым умением ни одной расы';

  @override
  String get skillBasedOn => 'Зависит от';

  @override
  String spellRange(String range) {
    return 'Дальность заклинания: $range';
  }

  @override
  String get spellComponents => 'Компоненты заклинания: ';

  @override
  String materialComponent(Object components) {
    return 'Материальный(е) компонент(ы): $components';
  }

  @override
  String spellDuration(String duration) {
    return 'Длительность: $duration';
  }

  @override
  String castTime(String duration) {
    return 'Время накладывания: $duration';
  }

  @override
  String spellLevel(String level) {
    return 'Уровень заклинания: $level';
  }

  @override
  String attackType(String type) {
    return 'Тип атаки: $type';
  }

  @override
  String get damageType => 'Тип урона: ';
}
