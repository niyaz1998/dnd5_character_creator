import 'package:dnd5_character_creator/app/data/models/base/description_base_model.dart';
import 'package:dnd5_character_creator/app/data/models/base/reference_base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ability_score_model.g.dart';

@JsonSerializable()
class AbilityScoreModel extends DescribedBaseModel {
  @JsonKey(name: 'full_name')
  final String? fullName;
  @JsonKey(name: 'skills')
  final String? skills;

  AbilityScoreModel({
    required this.fullName,
    required this.skills,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  factory AbilityScoreModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityScoreModelFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityScoreModelToJson(this);
}
