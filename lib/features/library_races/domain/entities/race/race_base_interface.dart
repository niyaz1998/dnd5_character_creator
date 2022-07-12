import '../../../../library/domain/entities/base/dnd_base_entity.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../../library_character_data/domain/entity/language_entity.dart';
import '../../../../library_character_data/domain/entity/proficiency_entity.dart';
import 'ability_bonus_entity.dart';

class RaceBaseInterface extends DndBaseEntity {
  const RaceBaseInterface({
    required super.name,
    required super.index,
    required this.abilityBonuses,
    required this.startingProficiencies,
    required this.languages,
  });

  final List<AbilityBonusEntity> abilityBonuses;
  final List<ReferenceBaseEntity<ProficiencyEntity>> startingProficiencies;
  final List<ReferenceBaseEntity<LanguageEntity>> languages;
}
