// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaceModel _$RaceModelFromJson(Map<String, dynamic> json) => RaceModel(
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      abilityBonuses: (json['ability_bonuses'] as List<dynamic>?)
              ?.map(
                  (e) => AbilityBonusModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      speed: (json['speed'] as num).toDouble(),
      alignment: json['alignment'] as String,
      age: json['age'] as String,
      size: json['size'] as String,
      sizeDescription: json['size_description'] as String,
      startingProficiencies: (json['starting_proficiencies'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      startingProficiencyOptions: json['starting_proficiency_options'] == null
          ? null
          : ChoiceBaseModel.fromJson(
              json['starting_proficiency_options'] as Map<String, dynamic>),
      languages: (json['languages'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      languageDesc: json['language_desc'] as String,
      traits: (json['traits'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      subRaces: (json['sub_races'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RaceModelToJson(RaceModel instance) => <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'ability_bonuses': instance.abilityBonuses,
      'starting_proficiencies': instance.startingProficiencies,
      'languages': instance.languages,
      'speed': instance.speed,
      'alignment': instance.alignment,
      'age': instance.age,
      'size': instance.size,
      'size_description': instance.sizeDescription,
      'starting_proficiency_options': instance.startingProficiencyOptions,
      'language_desc': instance.languageDesc,
      'traits': instance.traits,
      'sub_races': instance.subRaces,
    };
