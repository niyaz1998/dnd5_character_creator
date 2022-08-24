import '../../../../library/domain/entities/base/choice_base_entity.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../../library_character_data/domain/entity/proficiency_entity.dart';
import '../trait_entity.dart';
import 'race_base_interface.dart';
import 'sub_race_entity.dart';

class RaceEntity extends RaceBaseInterface {
  const RaceEntity({
    required super.index,
    required super.name,
    required super.abilityBonuses,
    required this.speed,
    required this.alignment,
    required this.age,
    required this.size,
    required this.sizeDescription,
    required super.startingProficiencies,
    required this.startingProficiencyOptions,
    required super.languages,
    required this.languageDesc,
    required this.traits,
    required this.subRaces,
  });

  final double speed;
  final String alignment;
  final String age;
  final String size;
  final String sizeDescription;
  final ChoiceBaseEntity<ProficiencyEntity>? startingProficiencyOptions;
  final String languageDesc;
  final List<ReferenceBaseEntity<TraitEntity>> traits;
  final List<ReferenceBaseEntity<SubRaceEntity>> subRaces;
}
