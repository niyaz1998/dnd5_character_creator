// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_damage_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpellDamageModel _$SpellDamageModelFromJson(Map<String, dynamic> json) =>
    SpellDamageModel(
      damageAtLevels: json['damage_at_levels'] as Map<String, dynamic>?,
      damageType: ReferenceBaseModel.fromJson(
          json['damage_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpellDamageModelToJson(SpellDamageModel instance) =>
    <String, dynamic>{
      'damage_at_levels': instance.damageAtLevels,
      'damage_type': instance.damageType,
    };
