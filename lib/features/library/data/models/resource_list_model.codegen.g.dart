// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_list_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceListModel<T> _$ResourceListModelFromJson<T extends ReferenceBaseModel>(
        Map<String, dynamic> json) =>
    ResourceListModel<T>(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ResourceListModelConverter<T>()
              .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResourceListModelToJson<T extends ReferenceBaseModel>(
        ResourceListModel<T> instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results':
          instance.results.map(ResourceListModelConverter<T>().toJson).toList(),
    };
