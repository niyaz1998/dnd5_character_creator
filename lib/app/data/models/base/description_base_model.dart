// ignore_for_file: prefer_relative_imports

import 'package:dnd5_character_creator/app/data/models/base/reference_base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'description_base_model.g.dart';

/// большое кол-во сущностей включат в себя описани
@JsonSerializable()
class DescribedBaseModel extends ReferenceBaseModel {
  @JsonKey(name: 'desc')
  String description;

  DescribedBaseModel({
    required this.description,
    required super.index,
    required super.name,
    required super.url,
  });

  factory DescribedBaseModel.fromJson(Map<String, dynamic> json) =>
      _$DescribedBaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DescribedBaseModelToJson(this);
}
