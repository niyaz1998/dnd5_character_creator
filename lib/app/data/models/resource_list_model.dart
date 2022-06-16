import 'package:json_annotation/json_annotation.dart';

import 'base/reference_base_model.dart';
import 'json_parsers/reference_model_converter.dart';

part 'resource_list_model.g.dart';

@JsonSerializable()
class ResourceListModel<T extends ReferenceBaseModel> {
  final int count;

  @ResourceListModelConverter()
  final List<T> results;

  ResourceListModel({
    required this.count,
    required this.results,
  });

  factory ResourceListModel.fromJson(Map<String, dynamic> json) =>
      _$ResourceListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceListModelToJson(this);
}
