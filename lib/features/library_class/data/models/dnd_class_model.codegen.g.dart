// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dnd_class_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DndClassModel _$DndClassModelFromJson(Map<String, dynamic> json) =>
    DndClassModel(
      name: json['name'] as String,
      index: json['index'] as String,
      url: json['url'] as String,
      proficiencies: (json['proficiencies'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      equipment: (json['equipment'] as List<dynamic>?)
              ?.map((e) =>
                  EquipmentAmountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      equipmentChoice: json['equipment_choice'] == null
          ? null
          : ChoiceBaseModel.fromJson(
              json['equipment_choice'] as Map<String, dynamic>),
      hitDie: json['hit_die'] as int,
      proficienciesChoice: json['proficiencies_choice'] == null
          ? null
          : ChoiceBaseModel.fromJson(
              json['proficiencies_choice'] as Map<String, dynamic>),
      savingThrows: (json['saving_throws'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      spellCasting: json['spellcasting'] == null
          ? null
          : SpellCastingModel.fromJson(
              json['spellcasting'] as Map<String, dynamic>),
      subclasses: (json['subclasses'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DndClassModelToJson(DndClassModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'hit_die': instance.hitDie,
      'spellcasting': instance.spellCasting,
      'equipment': instance.equipment,
      'equipment_choice': instance.equipmentChoice,
      'proficiencies_choice': instance.proficienciesChoice,
      'proficiencies': instance.proficiencies,
      'saving_throws': instance.savingThrows,
      'subclasses': instance.subclasses,
    };
