import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../library/data/models/base/description_base_model.codegen.dart';
import '../../../../library/data/models/base/reference_base_model.codegen.dart';
import '../../../../library/data/models/json_parsers/description_parser.dart';

part 'background_ideal_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class BackgroundIdealModel extends DescribedBaseModel {
  const BackgroundIdealModel({
    required this.alignments,
    required super.description,
    required super.index,
    required super.url,
    required super.name,
  });

  final List<ReferenceBaseModel> alignments;

  factory BackgroundIdealModel.fromJson(Map<String, dynamic> json) =>
      _$BackgroundIdealModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BackgroundIdealModelToJson(this);
}
