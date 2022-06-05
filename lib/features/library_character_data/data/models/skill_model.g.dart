// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillModel _$SkillModelFromJson(Map<String, dynamic> json) => SkillModel(
      abilityScore: ReferenceBaseModel.fromJson(
          json['ability_score'] as Map<String, dynamic>),
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description: json['desc'] as String,
    );

Map<String, dynamic> _$SkillModelToJson(SkillModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': instance.description,
      'ability_score': instance.abilityScore,
    };
