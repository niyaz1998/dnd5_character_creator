import 'package:json_annotation/json_annotation.dart';

import 'base/reference_base_model.dart';

part 'resource_list_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResourceListModel<T extends ReferenceBaseModel> {
  final int count;
  final List<T> result;

  ResourceListModel({
    required this.count,
    required this.result,
  });

  factory ResourceListModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResourceListModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ResourceListModelToJson(this, toJsonT);
}
