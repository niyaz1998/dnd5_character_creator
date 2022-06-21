// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description_base_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DescribedBaseModel _$DescribedBaseModelFromJson(Map<String, dynamic> json) =>
    DescribedBaseModel(
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
      index: json['index'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DescribedBaseModelToJson(DescribedBaseModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
    };
