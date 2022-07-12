import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/description_base_model.codegen.dart';
import '../../../../app/data/models/base/reference_base_model.codegen.dart';
import '../../../../app/data/models/json_parsers/description_parser.dart';

part 'skill_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SkillModel extends DescribedBaseModel {
  const SkillModel({
    required this.abilityScore,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);

  final ReferenceBaseModel abilityScore;

  @override
  Map<String, dynamic> toJson() => _$SkillModelToJson(this);
}
