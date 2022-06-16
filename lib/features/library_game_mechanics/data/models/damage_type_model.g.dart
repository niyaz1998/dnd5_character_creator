// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'damage_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DamageTypeModel _$DamageTypeModelFromJson(Map<String, dynamic> json) =>
    DamageTypeModel(
      index: json['index'] as String,
      url: json['url'] as String,
      description:
          (json['desc'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$DamageTypeModelToJson(DamageTypeModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': instance.description,
    };
