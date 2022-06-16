import '../../../../app/data/models/base/reference_base_model.dart';
import '../../../library_character_data/data/models/ability_score_model.dart';
import '../../../library_character_data/data/models/alignment_model.dart';
import '../../../library_character_data/data/models/background_model.dart';
import '../../../library_character_data/data/models/language_model.dart';
import '../../../library_character_data/data/models/proficiency_model.dart';
import '../../../library_character_data/data/models/skill_model.dart';

class DndResourceDescriptor<T extends ReferenceBaseModel> {
  const DndResourceDescriptor({
    required this.path,
    required this.localeKey,
  });

  static Map<Type, DndResourceDescriptor> get resourceDescriptors => const {
        AbilityScoreModel: DndResourceDescriptor<AbilityScoreModel>(
          localeKey: 'ability-scores',
          path: 'ability-scores',
        ),
        AlignmentModel: DndResourceDescriptor<AlignmentModel>(
          localeKey: 'alignments',
          path: 'alignments',
        ),
        BackgroundModel: DndResourceDescriptor<BackgroundModel>(
          localeKey: 'backgrounds',
          path: 'backgrounds',
        ),
        LanguageModel: DndResourceDescriptor<LanguageModel>(
          localeKey: 'languages',
          path: 'languages',
        ),
        ProficiencyModel: DndResourceDescriptor<ProficiencyModel>(
          localeKey: 'proficiencies',
          path: 'proficiencies',
        ),
        SkillModel: DndResourceDescriptor<SkillModel>(
          localeKey: 'skills',
          path: 'skills',
        ),
      };

  final String path;
  final String localeKey;
}
