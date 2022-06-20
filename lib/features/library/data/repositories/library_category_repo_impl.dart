import 'package:injectable/injectable.dart';

import '../../../library_character_data/domain/entity/ability_score_entity.dart';
import '../../../library_character_data/domain/entity/alignment_entity.dart';
import '../../../library_character_data/domain/entity/background/background_entity.dart';
import '../../../library_character_data/domain/entity/language_entity.dart';
import '../../../library_character_data/domain/entity/proficiency_entity.dart';
import '../../../library_character_data/domain/entity/skill_entity.dart';
import '../../domain/entities/base/dnd_base_entity.dart';
import '../../domain/entities/base/reference_base_entity.dart';
import '../../domain/entities/library_category_entity.dart';
import '../../domain/repositories/library_repo.dart';
import '../api/dnd5e_api.dart';
import '../models/base/reference_base_model.dart';

@LazySingleton(as: LibraryRepo)
class LibraryRepoImpl extends LibraryRepo {
  static Map<Type, LibraryCategoryEntity> get resourceDescriptors => const {
        AbilityScoreEntity: LibraryCategoryEntity<AbilityScoreEntity>(
          localeKey: 'ability-scores',
          path: 'ability-scores',
        ),
        AlignmentEntity: LibraryCategoryEntity<AlignmentEntity>(
          localeKey: 'alignments',
          path: 'alignments',
        ),
        BackgroundEntity: LibraryCategoryEntity<BackgroundEntity>(
          localeKey: 'backgrounds',
          path: 'backgrounds',
        ),
        LanguageEntity: LibraryCategoryEntity<LanguageEntity>(
          localeKey: 'languages',
          path: 'languages',
        ),
        ProficiencyEntity: LibraryCategoryEntity<ProficiencyEntity>(
          localeKey: 'proficiencies',
          path: 'proficiencies',
        ),
        SkillEntity: LibraryCategoryEntity<SkillEntity>(
          localeKey: 'skills',
          path: 'skills',
        ),
      };

  LibraryRepoImpl(this.api);

  final Dnd5eApi api;

  @override
  Future<List<LibraryCategoryEntity>> fetchCategories() async =>
      resourceDescriptors.values.toList();

  @override
  Future<List<ReferenceBaseEntity<T>>>
      fetchCategoryEntities<T extends DndBaseEntity>(
    LibraryCategoryEntity<T> category,
  ) =>
          api
              .dndRequestList<ReferenceBaseModel>('/api/${category.path}')
              .then((value) => value.toEntity());

  @override
  Future<T> fetchLibraryItem<T extends DndBaseEntity>(
    ReferenceBaseEntity<T> baseLink,
  ) =>
      api.dndRequest(baseLink.url);
}
