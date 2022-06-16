import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.dart';
import '../../../library/data/models/base/reference_base_model.dart';
import '../../../library/data/models/json_parsers/description_parser.dart';
import '../../domain/entity/ability_score_entity.dart';

part 'ability_score_model.g.dart';

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
        skills: skills.toEntity(),
        url: url,
        index: index,
        name: name,
        description: description,
      );
}

extension AbilityScoreListToEntity on List<AbilityScoreModel> {
  List<AbilityScoreEntity> toEntity() => map((e) => e.toEntity()).toList();
}
