import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.dart';
import '../../../library/data/models/json_parsers/description_parser.dart';

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
