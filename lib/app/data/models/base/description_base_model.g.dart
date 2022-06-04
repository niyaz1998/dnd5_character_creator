// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DescribedBaseModel _$DescribedBaseModelFromJson(Map<String, dynamic> json) =>
    DescribedBaseModel(
      description: json['desc'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DescribedBaseModelToJson(DescribedBaseModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': instance.description,
    };
