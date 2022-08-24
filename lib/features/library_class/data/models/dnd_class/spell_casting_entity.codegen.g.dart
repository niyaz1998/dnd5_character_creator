// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_casting_entity.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpellCastingModel _$SpellCastingModelFromJson(Map<String, dynamic> json) =>
    SpellCastingModel(
      level: json['level'] as int,
      info: (json['info'] as List<dynamic>)
          .map((e) => SpellCastingInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpellCastingModelToJson(SpellCastingModel instance) =>
    <String, dynamic>{
      'level': instance.level,
      'info': instance.info,
    };

SpellCastingInfoModel _$SpellCastingInfoModelFromJson(
        Map<String, dynamic> json) =>
    SpellCastingInfoModel(
      name: json['name'] as String,
      description: json['desc'] == null
          ? []
          : const DescriptionConverter().fromJson(json['desc'] as Object),
    );

Map<String, dynamic> _$SpellCastingInfoModelToJson(
        SpellCastingInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'desc': const DescriptionConverter().toJson(instance.description),
    };
