// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_string_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoiceStringBaseModel _$ChoiceStringBaseModelFromJson(
        Map<String, dynamic> json) =>
    ChoiceStringBaseModel(
      choose: json['choose'] as int,
      type: json['type'] as String,
      from:
          (json['from'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$ChoiceStringBaseModelToJson(
        ChoiceStringBaseModel instance) =>
    <String, dynamic>{
      'choose': instance.choose,
      'type': instance.type,
      'from': instance.from,
    };
