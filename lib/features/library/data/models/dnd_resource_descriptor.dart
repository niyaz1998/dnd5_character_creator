import '../../../library_character_data/data/models/ability_score_model.dart';
import '../../../library_character_data/data/models/alignment_model.dart';
import '../../../library_character_data/data/models/background_model.dart';
import '../../../library_character_data/data/models/language_model.dart';
import '../../../library_character_data/data/models/proficiency_model.dart';
import '../../../library_character_data/data/models/skill_model.dart';

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
      };

  final String path;
  final String localeKey;
  final Type type;
}
