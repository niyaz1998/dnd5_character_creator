import '../../../library_character_data/data/models/ability_score_model.codegen.dart';
import '../../../library_character_data/data/models/alignment_model.codegen.dart';
import '../../../library_character_data/data/models/background_model.codegen.dart';
import '../../../library_character_data/data/models/language_model.codegen.dart';
import '../../../library_character_data/data/models/proficiency_model.codegen.dart';
import '../../../library_character_data/data/models/skill_model.codegen.dart';
import '../../../library_equipment/data/models/equipment_model.codegen.dart';

class DndResourceDescriptor {
  const DndResourceDescriptor({
    required this.path,
    required this.localeKey,
    required this.type,
  });

  static Map<Type, DndResourceDescriptor> get resourceDescriptors => const {
        AbilityScoreModel: DndResourceDescriptor(
          localeKey: 'ability-scores',
          path: 'ability-scores',
          type: AbilityScoreModel,
        ),
        AlignmentModel: DndResourceDescriptor(
          localeKey: 'alignments',
          path: 'alignments',
          type: AlignmentModel,
        ),
        BackgroundModel: DndResourceDescriptor(
          localeKey: 'backgrounds',
          path: 'backgrounds',
          type: BackgroundModel,
        ),
        LanguageModel: DndResourceDescriptor(
          localeKey: 'languages',
          path: 'languages',
          type: LanguageModel,
        ),
        ProficiencyModel: DndResourceDescriptor(
          localeKey: 'proficiencies',
          path: 'proficiencies',
          type: ProficiencyModel,
        ),
        SkillModel: DndResourceDescriptor(
          localeKey: 'skills',
          path: 'skills',
          type: SkillModel,
        ),
        EquipmentModel: DndResourceDescriptor(
          localeKey: 'equipment',
          path: 'equipment',
          type: EquipmentModel,
        ),
      };

  final String path;
  final String localeKey;
  final Type type;
}
