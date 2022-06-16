import '../../../library/domain/entities/base/description_base_entity.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';

class SkillModel extends DescribedBaseEntity {
  const SkillModel({
    required this.abilityScore,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  final ReferenceBaseEntity abilityScore;
}
