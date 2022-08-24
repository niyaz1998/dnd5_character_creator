// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_bonus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityBonusModel _$AbilityBonusModelFromJson(Map<String, dynamic> json) =>
    AbilityBonusModel(
      bonus: (json['bonus'] as num).toDouble(),
      abilityScore: ReferenceBaseModel.fromJson(
          json['ability_score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbilityBonusModelToJson(AbilityBonusModel instance) =>
    <String, dynamic>{
      'bonus': instance.bonus,
      'ability_score': instance.abilityScore,
    };
