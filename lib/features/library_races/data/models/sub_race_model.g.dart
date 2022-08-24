// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_race_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubRaceModel _$SubRaceModelFromJson(Map<String, dynamic> json) => SubRaceModel(
      abilityBonuses: (json['ability_bonuses'] as List<dynamic>?)
              ?.map(
                  (e) => AbilityBonusModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      startingProficiencies: (json['starting_proficiencies'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      race: ReferenceBaseModel.fromJson(json['race'] as Map<String, dynamic>),
      languageOptions: json['language_options'] == null
          ? null
          : ChoiceBaseModel.fromJson(
              json['language_options'] as Map<String, dynamic>),
      racialTraits: (json['racial_traits'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SubRaceModelToJson(SubRaceModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'ability_bonuses': instance.abilityBonuses,
      'starting_proficiencies': instance.startingProficiencies,
      'languages': instance.languages,
      'race': instance.race,
      'language_options': instance.languageOptions,
      'racial_traits': instance.racialTraits,
    };
