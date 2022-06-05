// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proficiency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProficiencyModel _$ProficiencyModelFromJson(Map<String, dynamic> json) =>
    ProficiencyModel(
      type: json['type'] as String,
      classes: (json['classes'] as List<dynamic>)
          .map((e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      races: (json['races'] as List<dynamic>)
          .map((e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: ReferenceBaseModel.fromJson(
          json['reference'] as Map<String, dynamic>),
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProficiencyModelToJson(ProficiencyModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'type': instance.type,
      'classes': instance.classes,
      'races': instance.races,
      'reference': instance.reference,
    };
