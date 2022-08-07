import '../../../library/domain/entities/base/choice_base_entity.dart';
import '../../../library/domain/entities/base/dnd_base_entity.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../library_character_data/domain/entity/ability_score_entity.dart';
import '../../../library_character_data/domain/entity/proficiency_entity.dart';
import 'dnd_class/spell_casting_entity.dart';

class DndClassEntity extends DndBaseEntity {
  const DndClassEntity({
    required super.name,
    required super.index,
    required this.proficiencies,
    required this.equipment,
    required this.equipmentChoice,
    required this.hitDie,
    required this.proficienciesChoice,
    required this.savingThrows,
    required this.spellCasting,
    required this.subclasses,
  });

  final int hitDie;
  final SpellCastingEntity? spellCasting;

  /// TODO: place equipment here
  /// тут идет снаряга с количеством
  final List<ReferenceBaseEntity<DndBaseEntity>> equipment;

  /// TODO: place equipment here
  final ChoiceBaseEntity<DndBaseEntity>? equipmentChoice;

  final ChoiceBaseEntity<ProficiencyEntity>? proficienciesChoice;

  final List<ReferenceBaseEntity<ProficiencyEntity>> proficiencies;

  final List<ReferenceBaseEntity<AbilityScoreEntity>> savingThrows;

  final List<ReferenceBaseEntity> subclasses;
}
