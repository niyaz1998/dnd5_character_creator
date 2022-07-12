// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_base_model.codegen.dart';

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
