import 'package:json_annotation/json_annotation.dart';

import 'reference_base_model.dart';

part 'description_base_model.g.dart';

/// большое кол-во сущностей включат в себя описани
@JsonSerializable()
class DescribedBaseModel extends ReferenceBaseModel {
  const DescribedBaseModel({
    required this.description,
    required super.index,
    required super.name,
    required super.url,
  });

  factory DescribedBaseModel.fromJson(Map<String, dynamic> json) =>
      _$DescribedBaseModelFromJson(json);

  @JsonKey(name: 'desc')
  final List<String> description;

  @override
  Map<String, dynamic> toJson() => _$DescribedBaseModelToJson(this);
}
