import '../../../library/domain/entities/base/choice_base_entity.dart';
import '../../../library/domain/entities/base/description_base_entity.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../library_character_data/domain/entity/proficiency_entity.dart';
import 'race/race_entity.dart';
import 'race/sub_race_entity.dart';

class TraitEntity extends DescribedBaseEntity {
  const TraitEntity({
    required super.name,
    required super.index,
    required super.description,
    required this.races,
    required this.subRaces,
    required this.proficiencies,
    required this.proficiencyOptions,
    required this.traitSpecific,
  });

  final List<ReferenceBaseEntity<RaceEntity>> races;
  final List<ReferenceBaseEntity<SubRaceEntity>> subRaces;
  final List<ReferenceBaseEntity<ProficiencyEntity>> proficiencies;
  final ChoiceBaseEntity<ProficiencyEntity> proficiencyOptions;

  /// TODO: implement trait specific stuff
  final Map<String, dynamic> traitSpecific;
}
