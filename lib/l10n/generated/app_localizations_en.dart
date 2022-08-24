


import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get dnd => 'DnD5e';

  @override
  String get builder => 'Builder';

  @override
  String get library => 'Library';

  @override
  String get settings => 'Settings';

  @override
  String choiceListTitle(String type, int amount) {
    return '$type. Выберите $amount из';
  }

  @override
  String get isUsedForSkills => 'Is used for skills';

  @override
  String abbreviationIs(String abbreviation) {
    return 'Abbreviation: $abbreviation';
  }

  @override
  String get startingProficiencies => 'Starting proficiencies';

  @override
  String get startingEquipment => 'Starting equipment';

  @override
  String get personality => 'Personality';

  @override
  String languageType(String rarity) {
    return 'Rarity type is $rarity';
  }

  @override
  String languageScript(String script) {
    return 'Uses $script script';
  }

  @override
  String typicalSpeakers(String speakers) {
    return 'Typical speakers are $speakers';
  }

  @override
  String proficiencyGeneralType(String speakers) {
    return 'General category is {categoryType}';
  }

  @override
  String get classesStartsWithProficiency => 'Classes that start with this proficiency:';

  @override
  String get noClassStartsWithProficiency => 'No classes that start with this proficiency';

  @override
  String get racesStartsWithProficiency => 'Races that start with this proficiency:';

  @override
  String get noRaceStartsWithProficiency => 'No races that start with this proficiency';

  @override
  String get skillBasedOn => 'Based on';

  @override
  String hitDieSize(String hitDie) {
    return 'Hit die size $hitDie';
  }

  @override
  String get subclasses => 'Subclasses';

  @override
  String get savingThrows => 'Saving throws';

  @override
  String classAbleToCastFrom(String level) {
    return 'Class is able to cast spell from $level level';
  }

  @override
  String spellRange(String range) {
    return 'Spell range: $range';
  }

  @override
  String get spellComponents => 'Spell components: ';

  @override
  String materialComponent(Object components) {
    return 'Material component(s): $components';
  }

  @override
  String spellDuration(String duration) {
    return 'Duration: $duration';
  }

  @override
  String castTime(String duration) {
    return 'Cast time: $duration';
  }

  @override
  String spellLevel(String level) {
    return 'Spell level: $level';
  }

  @override
  String attackType(String type) {
    return 'Attack type: $type';
  }

  @override
  String get damageType => 'Damage type: ';
}
