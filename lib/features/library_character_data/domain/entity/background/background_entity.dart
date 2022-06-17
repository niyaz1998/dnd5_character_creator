import '../../../../library/domain/entities/base/choice_base_entity.dart';
import '../../../../library/domain/entities/base/dnd_base_entity.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../language_entity.dart';
import '../proficiency_entity.dart';
import 'background_feature.dart';
import 'background_ideal.dart';

class BackgroundModel extends DndBaseEntity {
  const BackgroundModel({
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
  final List<ReferenceBaseEntity> startingEquipment;
  final List<ChoiceBaseEntity> startingEquipmentOptions;
  final ChoiceBaseEntity<LanguageEntity> languageOptions;
  final BackgroundFeature feature;

  /// TODO: api not documented here, obtain info by hand
  final dynamic personalityTraits;
  final ChoiceBaseEntity<BackgroundIdeal> ideals;
  final ChoiceBaseEntityString bonds;
  final ChoiceBaseEntityString flaws;
}
