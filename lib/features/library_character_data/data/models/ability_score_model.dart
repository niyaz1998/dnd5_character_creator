import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/description_base_model.dart';

part 'ability_score_model.g.dart';

@JsonSerializable()
class AbilityScoreModel extends DescribedBaseModel {
  @JsonKey(name: 'full_name')
  final String? fullName;
  @JsonKey(name: 'skills')
  final String? skills;

  const AbilityScoreModel({
    required this.fullName,
    required this.skills,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  factory AbilityScoreModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityScoreModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AbilityScoreModelToJson(this);
}
