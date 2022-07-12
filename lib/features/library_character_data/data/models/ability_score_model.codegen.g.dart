// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_score_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityScoreModel _$AbilityScoreModelFromJson(Map<String, dynamic> json) =>
    AbilityScoreModel(
      fullName: json['full_name'] as String?,
      skills: json['skills'] as String?,
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
    );

Map<String, dynamic> _$AbilityScoreModelToJson(AbilityScoreModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'full_name': instance.fullName,
      'skills': instance.skills,
    };
