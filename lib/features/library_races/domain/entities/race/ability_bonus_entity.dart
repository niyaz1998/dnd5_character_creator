import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../../library_character_data/domain/entity/ability_score_entity.dart';

class AbilityBonusEntity {
  const AbilityBonusEntity({
    required this.bonus,
    required this.abilityScore,
  });

  final double bonus;
  final ReferenceBaseEntity<AbilityScoreEntity> abilityScore;
}
