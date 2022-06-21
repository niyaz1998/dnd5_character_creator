// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'damage_type_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DamageTypeModel _$DamageTypeModelFromJson(Map<String, dynamic> json) =>
    DamageTypeModel(
      index: json['index'] as String,
      url: json['url'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
      name: json['name'] as String,
    );

Map<String, dynamic> _$DamageTypeModelToJson(DamageTypeModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
    };
