// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magic_school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MagicSchoolModel _$MagicSchoolModelFromJson(Map<String, dynamic> json) =>
    MagicSchoolModel(
      index: json['index'] as String,
      url: json['url'] as String,
      description:
          (json['desc'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$MagicSchoolModelToJson(MagicSchoolModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': instance.description,
    };
