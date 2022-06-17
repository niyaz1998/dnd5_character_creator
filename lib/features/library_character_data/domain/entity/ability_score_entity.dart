import '../../../library/domain/entities/base/description_base_entity.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';
import 'skill_model.dart';

class AbilityScoreEntity extends DescribedBaseEntity {
  const AbilityScoreEntity({
    required this.fullName,
    required this.skills,
    required super.description,
  });

  final String fullName;
  final List<ReferenceBaseEntity<SkillEntity>> skills;
}
