import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../library/data/models/base/description_base_model.codegen.dart';
import '../../../domain/entity/background/background_feature_entity.dart';

part 'background_feature_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class BackgroundFeatureModel {
  const BackgroundFeatureModel({
    required this.name,
    required this.description,
  });

  factory BackgroundFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$BackgroundFeatureModelFromJson(json);

  @JsonKey(name: 'desc', defaultValue: [])
  @DescriptionConverter()
  final List<String> description;
  final String name;

  Map<String, dynamic> toJson() => _$BackgroundFeatureModelToJson(this);
}

extension BackgroundFeatureToEntity on BackgroundFeatureModel {
  BackgroundFeatureEntity toEntity() => BackgroundFeatureEntity(
        description: description,
        name: name,
      );
}

extension BackgroundFeatureListToEntity on List<BackgroundFeatureModel> {
  List<BackgroundFeatureEntity> toEntity() => map((e) => e.toEntity()).toList();
}
