// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_ideal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundIdealModel _$BackgroundIdealModelFromJson(
        Map<String, dynamic> json) =>
    BackgroundIdealModel(
      alignments: (json['alignments'] as List<dynamic>)
          .map((e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['desc'] == null
          ? []
          : const DescriptionConverter().fromJson(json['desc'] as Object),
      index: json['index'] as String,
      url: json['url'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BackgroundIdealModelToJson(
        BackgroundIdealModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'alignments': instance.alignments,
    };
