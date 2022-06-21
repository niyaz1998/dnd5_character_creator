// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillModel _$SkillModelFromJson(Map<String, dynamic> json) => SkillModel(
      abilityScore: ReferenceBaseModel.fromJson(
          json['ability_score'] as Map<String, dynamic>),
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
    );

Map<String, dynamic> _$SkillModelToJson(SkillModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'ability_score': instance.abilityScore,
    };
