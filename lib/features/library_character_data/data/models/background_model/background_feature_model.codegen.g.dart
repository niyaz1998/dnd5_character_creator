// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_feature_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundFeatureModel _$BackgroundFeatureModelFromJson(
        Map<String, dynamic> json) =>
    BackgroundFeatureModel(
      name: json['name'] as String,
      description: json['desc'] == null
          ? []
          : const DescriptionConverter().fromJson(json['desc'] as Object),
      index: json['index'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$BackgroundFeatureModelToJson(
        BackgroundFeatureModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
    };
