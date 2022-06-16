// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) =>
    ConditionModel(
      index: json['index'] as String,
      url: json['url'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ConditionModelToJson(ConditionModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
    };
