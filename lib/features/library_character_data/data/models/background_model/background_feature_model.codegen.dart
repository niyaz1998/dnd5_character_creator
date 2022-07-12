import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../library/data/models/base/description_base_model.codegen.dart';
import '../../../../library/data/models/json_parsers/description_parser.dart';
import '../../../domain/entity/background/background_feature_entity.dart';

part 'background_feature_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class BackgroundFeatureModel extends DescribedBaseModel {
  const BackgroundFeatureModel({
    required super.name,
    required super.description,
    required super.index,
    required super.url,
  });

  factory BackgroundFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$BackgroundFeatureModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BackgroundFeatureModelToJson(this);
}

extension BackgroundFeatureToEntity on BackgroundFeatureModel {
  BackgroundFeatureEntity toEntity() => BackgroundFeatureEntity(
        description: description,
        index: index,
        name: name,
      );

  BackgroundFeatureEntity? tryToEntity() {
    try {
      return BackgroundFeatureEntity(
        description: description,
        index: index,
        name: name,
      );
    } catch (_) {
      return null;
    }
  }
}

extension BackgroundFeatureListToEntity on List<BackgroundFeatureModel> {
  List<BackgroundFeatureEntity> toEntity() => map((e) => e.toEntity()).toList();
}
