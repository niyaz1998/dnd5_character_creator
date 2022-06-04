// ignore_for_file: prefer_relative_imports

import 'package:dnd5_character_creator/app/data/models/base/reference_base_model.dart';
import 'package:json_annotation/json_annotation.dart';

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
