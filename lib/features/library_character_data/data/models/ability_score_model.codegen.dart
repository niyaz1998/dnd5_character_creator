import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.codegen.dart';
import '../../../library/data/models/base/reference_base_model.codegen.dart';
import '../../domain/entity/ability_score_entity.dart';
import '../../domain/entity/skill_entity.dart';

part 'ability_score_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AbilityScoreModel extends DescribedBaseModel {
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

  final String fullName;
  final List<ReferenceBaseModel> skills;

  @override
  Map<String, dynamic> toJson() => _$AbilityScoreModelToJson(this);
}

extension AbilityScoreToEntity on AbilityScoreModel {
  AbilityScoreEntity toEntity() => AbilityScoreEntity(
        fullName: fullName,
        index: index,
        name: name,
        skills: skills.toEntity<SkillEntity>(),
        description: description,
      );
}

extension AbilityScoreListToEntity on List<AbilityScoreModel> {
  List<AbilityScoreEntity> toEntity() => map((e) => e.toEntity()).toList();
}
