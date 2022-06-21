// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alignment_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlignmentModel _$AlignmentModelFromJson(Map<String, dynamic> json) =>
    AlignmentModel(
      abbreviation: json['abbreviation'] as String,
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
    );

Map<String, dynamic> _$AlignmentModelToJson(AlignmentModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'abbreviation': instance.abbreviation,
    };
