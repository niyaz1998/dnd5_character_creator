// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alignment_model.dart';

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
          (json['desc'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AlignmentModelToJson(AlignmentModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': instance.description,
      'abbreviation': instance.abbreviation,
    };
