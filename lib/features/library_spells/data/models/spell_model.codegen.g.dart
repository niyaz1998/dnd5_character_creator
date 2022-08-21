// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpellModel _$SpellModelFromJson(Map<String, dynamic> json) => SpellModel(
      name: json['name'] as String,
      index: json['index'] as String,
      description: json['desc'] == null
          ? []
          : const DescriptionConverter().fromJson(json['desc'] as Object),
      url: json['url'] as String,
      level: json['level'] as int,
      duration: json['duration'] as String,
      attackType: json['attack_type'] as String?,
      castingTime: json['casting_time'] as String,
      components: (json['components'] as List<dynamic>)
          .map((e) => $enumDecode(_$SpellComponentModelEnumMap, e))
          .toList(),
      concentration: json['concentration'] as bool,
      damage: json['damage'] == null
          ? null
          : SpellDamageModel.fromJson(json['damage'] as Map<String, dynamic>),
      higherLevels: (json['higher_levels'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      material: json['material'] as String?,
      range: json['range'] as String,
      ritual: json['ritual'] as bool,
      school:
          ReferenceBaseModel.fromJson(json['school'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpellModelToJson(SpellModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'higher_levels': instance.higherLevels,
      'range': instance.range,
      'components': instance.components
          .map((e) => _$SpellComponentModelEnumMap[e])
          .toList(),
      'material': instance.material,
      'ritual': instance.ritual,
      'duration': instance.duration,
      'concentration': instance.concentration,
      'casting_time': instance.castingTime,
      'level': instance.level,
      'attack_type': instance.attackType,
      'damage': instance.damage,
      'school': instance.school,
    };

const _$SpellComponentModelEnumMap = {
  SpellComponentModel.verbal: 'V',
  SpellComponentModel.somatic: 'S',
  SpellComponentModel.material: 'M',
};
