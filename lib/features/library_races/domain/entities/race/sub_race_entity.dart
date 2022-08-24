import '../../../../library/domain/entities/base/choice_base_entity.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../../library_character_data/domain/entity/language_entity.dart';
import '../trait_entity.dart';
import 'race_base_interface.dart';
import 'race_entity.dart';

class SubRaceEntity extends RaceBaseInterface {
  const SubRaceEntity({
    required super.name,
    required super.index,
    required super.abilityBonuses,
    required super.startingProficiencies,
    required super.languages,
    required this.languageOptions,
    required this.race,
    required this.racialTraits,
  });

  final ReferenceBaseEntity<RaceEntity> race;
  final ChoiceBaseEntity<LanguageEntity>? languageOptions;
  final List<ReferenceBaseEntity<TraitEntity>> racialTraits;
}
