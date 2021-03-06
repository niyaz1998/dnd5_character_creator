import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/description_base_model.codegen.dart';
import '../../../../app/data/models/json_parsers/description_parser.dart';

part 'magic_school_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class MagicSchoolModel extends DescribedBaseModel {
  const MagicSchoolModel({
    required super.index,
    required super.url,
    required super.description,
    required super.name,
  });

  factory MagicSchoolModel.fromJson(Map<String, dynamic> json) =>
      _$MagicSchoolModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MagicSchoolModelToJson(this);
}
