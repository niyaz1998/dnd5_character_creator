import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.codegen.dart';
import '../../domain/entities/condition_entity.dart';

part 'condition_model.codegen.g.dart';

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
        index: index,
        name: name,
      );
}

extension ConditionListToEntity on List<ConditionModel> {
  List<ConditionEntity> toEntity() => map((e) => e.toEntity()).toList();
}
