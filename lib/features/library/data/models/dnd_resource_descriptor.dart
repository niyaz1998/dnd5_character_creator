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
  const DndResourceDescriptor({
    required this.path,
    required this.localeKey,
    required this.jsonParser,
  });

  static Map<Type, DndResourceDescriptor> get resourceDescriptors => const {
        AbilityScoreModel: DndResourceDescriptor<AbilityScoreModel>(
          localeKey: 'ability-scores',
          path: 'ability-scores',
          jsonParser: AbilityScoreModel.fromJson,
        ),
        AlignmentModel: DndResourceDescriptor<AlignmentModel>(
          localeKey: 'alignments',
          path: 'alignments',
          jsonParser: AlignmentModel.fromJson,
        ),
        BackgroundModel: DndResourceDescriptor<BackgroundModel>(
          localeKey: 'backgrounds',
          path: 'backgrounds',
          jsonParser: BackgroundModel.fromJson,
        ),
        LanguageModel: DndResourceDescriptor<LanguageModel>(
          localeKey: 'languages',
          path: 'languages',
          jsonParser: LanguageModel.fromJson,
        ),
        ProficiencyModel: DndResourceDescriptor<ProficiencyModel>(
          localeKey: 'proficiencies',
          path: 'proficiencies',
          jsonParser: ProficiencyModel.fromJson,
        ),
        SkillModel: DndResourceDescriptor<SkillModel>(
          localeKey: 'skills',
          path: 'skills',
          jsonParser: SkillModel.fromJson,
        ),
      };

  final String path;
  final String localeKey;
  final JsonParser<T> jsonParser;

  T fromJsonT(Object? json) => jsonParser(json as Map<String, dynamic>);
}
