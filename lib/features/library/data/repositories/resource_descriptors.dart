import '../../../library_character_data/domain/entity/ability_score_entity.dart';
import '../../../library_character_data/domain/entity/alignment_entity.dart';
import '../../../library_character_data/domain/entity/language_entity.dart';
import '../../../library_character_data/domain/entity/proficiency_entity.dart';
import '../../../library_character_data/domain/entity/skill_entity.dart';
import '../../../library_class/domain/entities/dnd_class_entity.dart';
import '../../domain/entities/library_category_entity.dart';

List<LibraryCategoryEntity> resourceDescriptorsConst = const [
  LibraryCategoryEntity(
    localeKey: 'ability-scores',
    path: 'ability-scores',
    domainType: AbilityScoreEntity,
  ),
  LibraryCategoryEntity(
    localeKey: 'alignments',
    path: 'alignments',
    domainType: AlignmentEntity,
  ),
  /*
  предыстории как то криво работают, позже разберусь
        LibraryCategoryEntity(
          localeKey: 'backgrounds',
          path: 'backgrounds',
          domainType: BackgroundEntity,
        ),
        */
  LibraryCategoryEntity(
    localeKey: 'languages',
    path: 'languages',
    domainType: LanguageEntity,
  ),
  LibraryCategoryEntity(
    localeKey: 'proficiencies',
    path: 'proficiencies',
    domainType: ProficiencyEntity,
  ),
  LibraryCategoryEntity(
    localeKey: 'skills',
    path: 'skills',
    domainType: SkillEntity,
  ),
  LibraryCategoryEntity(
    localeKey: 'classes',
    path: 'classes',
    domainType: DndClassEntity,
  ),
];
