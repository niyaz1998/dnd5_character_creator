// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    LanguageModel(
      type: json['type'] as String,
      script: json['script'] as String,
      typicalSpeakers: (json['typical_speakers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
    );

Map<String, dynamic> _$LanguageModelToJson(LanguageModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'type': instance.type,
      'script': instance.script,
      'typical_speakers': instance.typicalSpeakers,
    };
