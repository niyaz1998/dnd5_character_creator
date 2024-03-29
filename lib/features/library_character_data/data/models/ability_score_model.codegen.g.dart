// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_score_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityScoreModel _$AbilityScoreModelFromJson(Map<String, dynamic> json) =>
    AbilityScoreModel(
      fullName: json['full_name'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description: json['desc'] == null
          ? []
          : const DescriptionConverter().fromJson(json['desc'] as Object),
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
