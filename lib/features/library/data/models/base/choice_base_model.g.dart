// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoiceBaseModel _$ChoiceBaseModelFromJson(Map<String, dynamic> json) =>
    ChoiceBaseModel(
      choose: json['choose'] as int,
      type: json['type'] as String,
      from: (json['from'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ChoiceBaseModelToJson(ChoiceBaseModel instance) =>
    <String, dynamic>{
      'choose': instance.choose,
      'type': instance.type,
      'from': instance.from,
    };

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
