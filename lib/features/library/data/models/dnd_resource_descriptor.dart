import '../../../../app/data/models/base/reference_base_model.dart';
import '../../../library_character_data/data/ability_score_model.dart';
import '../../../library_character_data/data/alignment_model.dart';
import '../../../library_character_data/data/background_model.dart';
import '../../../library_character_data/data/language_model.dart';
import '../../../library_character_data/data/proficiency_model.dart';
import '../../../library_character_data/data/skill_model.dart';

typedef JsonParser<T extends ReferenceBaseModel> = T Function(
  Map<String, dynamic> json,
);

class DndResourceDescriptor<T extends ReferenceBaseModel> {
  final String path;
  final String localeKey;
  final JsonParser<T> jsonParser;

  const DndResourceDescriptor({
    required this.path,
    required this.localeKey,
    required this.jsonParser,
  });

  static Map<Type, DndResourceDescriptor> get resourceDescriptors => {
        AbilityScoreModel: DndResourceDescriptor<AbilityScoreModel>(
          localeKey: 'ability-scores',
          path: 'ability-scores',
          jsonParser: (Map<String, dynamic> json) =>
              AbilityScoreModel.fromJson(json),
        ),
        AlignmentModel: DndResourceDescriptor<AlignmentModel>(
          localeKey: 'alignments',
          path: 'alignments',
          jsonParser: (Map<String, dynamic> json) =>
              AlignmentModel.fromJson(json),
        ),
        BackgroundModel: DndResourceDescriptor<BackgroundModel>(
          localeKey: 'backgrounds',
          path: 'backgrounds',
          jsonParser: (Map<String, dynamic> json) =>
              BackgroundModel.fromJson(json),
        ),
        LanguageModel: DndResourceDescriptor<LanguageModel>(
          localeKey: 'languages',
          path: 'languages',
          jsonParser: (Map<String, dynamic> json) =>
              LanguageModel.fromJson(json),
        ),
        ProficiencyModel: DndResourceDescriptor<ProficiencyModel>(
          localeKey: 'proficiencies',
          path: 'proficiencies',
          jsonParser: (Map<String, dynamic> json) =>
              ProficiencyModel.fromJson(json),
        ),
        SkillModel: DndResourceDescriptor<SkillModel>(
          localeKey: 'skills',
          path: 'skills',
          jsonParser: (Map<String, dynamic> json) => SkillModel.fromJson(json),
        ),
      };
}
