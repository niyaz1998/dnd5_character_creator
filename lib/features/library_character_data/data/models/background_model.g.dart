// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundModel _$BackgroundModelFromJson(Map<String, dynamic> json) =>
    BackgroundModel(
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BackgroundModelToJson(BackgroundModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
    };
