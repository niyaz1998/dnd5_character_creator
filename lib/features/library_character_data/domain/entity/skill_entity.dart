import '../../../library/domain/entities/base/description_base_entity.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';
import 'ability_score_entity.dart';

class SkillEntity extends DescribedBaseEntity {
  const SkillEntity({
    required this.abilityScore,
    required super.description,
    required super.index,
    required super.name,
  });

  final ReferenceBaseEntity<AbilityScoreEntity> abilityScore;
}
