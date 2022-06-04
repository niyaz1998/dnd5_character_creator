import 'package:dnd5_character_creator/app/data/models/base/description_base_model.dart';
import 'package:dnd5_character_creator/app/data/models/base/reference_base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'skill_model.g.dart';

@JsonSerializable()
class SkillModel extends DescribedBaseModel {
  @JsonKey(name: 'ability_score')
  final ReferenceBaseModel abilityScore;

  SkillModel({
    required this.abilityScore,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SkillModelToJson(this);
}
