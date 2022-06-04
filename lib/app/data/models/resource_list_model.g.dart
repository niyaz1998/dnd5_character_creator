// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceListModel<T> _$ResourceListModelFromJson<T extends ReferenceBaseModel>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResourceListModel<T>(
      count: json['count'] as int,
      result: (json['result'] as List<dynamic>).map(fromJsonT).toList(),
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ResourceListModelToJson<T extends ReferenceBaseModel>(
  ResourceListModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'count': instance.count,
      'result': instance.result.map(toJsonT).toList(),
    };
