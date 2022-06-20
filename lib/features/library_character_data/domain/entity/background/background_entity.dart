import '../../../../library/domain/entities/base/choice_base_entity.dart';
import '../../../../library/domain/entities/base/dnd_base_entity.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../../library_equipment/domain/entities/equipment/equipment_base_entity.dart';
import '../language_entity.dart';
import '../proficiency_entity.dart';
import 'background_feature.dart';
import 'background_ideal.dart';

class BackgroundEntity extends DndBaseEntity {
  const BackgroundEntity({
    required this.startingProficiencies,
    required this.startingEquipment,
    required this.startingEquipmentOptions,
    required this.languageOptions,
    required this.feature,
    required this.personalityTraits,
    required this.ideals,
    required this.bonds,
    required this.flaws,
    required super.index,
    required super.name,
  });

  final List<ReferenceBaseEntity<ProficiencyEntity>> startingProficiencies;
  final List<ReferenceBaseEntity<EquipmentBaseEntity>> startingEquipment;
  final List<ChoiceBaseEntity> startingEquipmentOptions;
  final ChoiceBaseEntity<LanguageEntity> languageOptions;
  final BackgroundFeature feature;

  /// API not documented here
  final Map<String, dynamic> personalityTraits;
  final ChoiceBaseEntity<BackgroundIdeal> ideals;
  final ChoiceBaseEntityString bonds;
  final ChoiceBaseEntityString flaws;
}
