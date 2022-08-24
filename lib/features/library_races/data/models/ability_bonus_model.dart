import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/reference_base_model.codegen.dart';
import '../../domain/entities/race/ability_bonus_entity.dart';

part 'ability_bonus_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AbilityBonusModel {
  const AbilityBonusModel({
    required this.bonus,
    required this.abilityScore,
  });

  factory AbilityBonusModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityBonusModelFromJson(json);

  final double bonus;
  final ReferenceBaseModel abilityScore;

  Map<String, dynamic> toJson() => _$AbilityBonusModelToJson(this);
}

extension AbilityBonusToEntity on AbilityBonusModel {
  AbilityBonusEntity toEntity() => AbilityBonusEntity(
        bonus: bonus,
        abilityScore: abilityScore.toEntity(),
      );
}

extension AbilityBonusListToEntity on List<AbilityBonusModel> {
  List<AbilityBonusEntity> toEntity() => map((e) => e.toEntity()).toList();
}
