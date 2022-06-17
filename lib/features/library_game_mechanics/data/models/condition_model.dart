import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.dart';
import '../../../library/data/models/json_parsers/description_parser.dart';
import '../../domain/entities/condition_entity.dart';

part 'condition_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class ConditionModel extends DescribedBaseModel {
  const ConditionModel({
    required super.index,
    required super.url,
    required super.description,
    required super.name,
  });

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConditionModelToJson(this);
}

extension ConditionToEntity on ConditionModel {
  ConditionEntity toEntity() => ConditionEntity(
        description: description,
      );
}

extension ConditionListToEntity on List<ConditionModel> {
  List<ConditionEntity> toEntity() => map((e) => e.toEntity()).toList();
}
