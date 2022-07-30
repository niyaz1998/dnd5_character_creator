// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'damage_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DamageModel _$DamageModelFromJson(Map<String, dynamic> json) => DamageModel(
      damageDice: json['damage_dice'] as String,
      damageType: ReferenceBaseModel.fromJson(
          json['damage_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DamageModelToJson(DamageModel instance) =>
    <String, dynamic>{
      'damage_dice': instance.damageDice,
      'damage_type': instance.damageType,
    };
