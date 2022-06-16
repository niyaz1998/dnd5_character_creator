import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.dart';
import '../../../library/data/models/json_parsers/description_parser.dart';

part 'damage_type_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class DamageTypeModel extends DescribedBaseModel {
  const DamageTypeModel({
    required super.index,
    required super.url,
    required super.description,
    required super.name,
  });

  factory DamageTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DamageTypeModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DamageTypeModelToJson(this);
}
