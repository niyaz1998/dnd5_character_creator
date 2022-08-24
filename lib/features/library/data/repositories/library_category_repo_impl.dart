import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../../library_character_data/data/models/ability_score_model.codegen.dart';
import '../../../library_character_data/data/models/alignment_model.codegen.dart';
import '../../../library_character_data/data/models/background_model/background_model.codegen.dart';
import '../../../library_character_data/data/models/language_model.codegen.dart';
import '../../../library_character_data/data/models/proficiency_model.codegen.dart';
import '../../../library_character_data/data/models/skill_model.codegen.dart';
import '../../../library_character_data/domain/entity/ability_score_entity.dart';
import '../../../library_character_data/domain/entity/alignment_entity.dart';
import '../../../library_character_data/domain/entity/background/background_entity.dart';
import '../../../library_character_data/domain/entity/language_entity.dart';
import '../../../library_character_data/domain/entity/proficiency_entity.dart';
import '../../../library_character_data/domain/entity/skill_entity.dart';
import '../../../library_class/data/models/dnd_class_model.codegen.dart';
import '../../../library_class/domain/entities/dnd_class_entity.dart';
import '../../../library_game_mechanics/data/models/condition_model.codegen.dart';
import '../../../library_game_mechanics/data/models/damage_type_model.codegen.dart';
import '../../../library_game_mechanics/data/models/magic_school_model.codegen.dart';
import '../../../library_game_mechanics/domain/entities/condition_entity.dart';
import '../../../library_game_mechanics/domain/entities/damage_type_entity.dart';
import '../../../library_game_mechanics/domain/entities/magic_school_entity.dart';
import '../../../library_spells/data/models/spell_model.codegen.dart';
import '../../../library_spells/domain/entity/spell_entity.dart';
import '../../domain/entities/base/dnd_base_entity.dart';
import '../../domain/entities/base/reference_base_entity.dart';
import '../../domain/entities/library_category_entity.dart';
import '../../domain/repositories/library_repo.dart';
import '../api/dnd5e_api.dart';
import '../models/base/reference_base_model.codegen.dart';
import 'resource_descriptors.dart';

@LazySingleton(as: LibraryRepo)
class LibraryRepoImpl extends LibraryRepo {
  static List<LibraryCategoryEntity> get resourceDescriptors =>
      resourceDescriptorsConst;

  LibraryRepoImpl(this.api);

  final Dnd5eApi api;

  @override
  Future<List<LibraryCategoryEntity>> fetchCategories() async =>
      resourceDescriptors.toList();

  @override
  Future<List<ReferenceBaseEntity<T>>>
      fetchCategoryEntities<T extends DndBaseEntity>(
    LibraryCategoryEntity category,
  ) =>
          api
              .dndRequestList<ReferenceBaseModel>('/api/${category.path}')
              .then((value) => value.toEntity());

  @override
  Future<DndBaseEntity> fetchLibraryItem(
    ReferenceBaseEntity baseLink,
  ) async {
    var descriptor = resourceDescriptors.firstWhereOrNull(
      (element) => baseLink.url.startsWith('/api/${element.path}'),
    );
    if (descriptor == null) {
      throw 'not found domain to data DTO relation';
    }
    switch (descriptor.domainType) {
      case AbilityScoreEntity:
        return api
            .dndRequest<AbilityScoreModel>(baseLink.url)
            .then((value) => value.toEntity());
      case AlignmentEntity:
        return api
            .dndRequest<AlignmentModel>(baseLink.url)
            .then((value) => value.toEntity());
      case BackgroundEntity:
        return api
            .dndRequest<BackgroundModel>(baseLink.url)
            .then((value) => value.toEntity());
      case LanguageEntity:
        return api
            .dndRequest<LanguageModel>(baseLink.url)
            .then((value) => value.toEntity());
      case ProficiencyEntity:
        return api
            .dndRequest<ProficiencyModel>(baseLink.url)
            .then((value) => value.toEntity());
      case SkillEntity:
        return api
            .dndRequest<SkillModel>(baseLink.url)
            .then((value) => value.toEntity());
      case DndClassEntity:
        return api
            .dndRequest<DndClassModel>(baseLink.url)
            .then((value) => value.toEntity());
      case SpellEntity:
        return api
            .dndRequest<SpellModel>(baseLink.url)
            .then((value) => value.toEntity());
      case ConditionEntity:
        return api
            .dndRequest<ConditionModel>(baseLink.url)
            .then((value) => value.toEntity());
      case DamageTypeEntity:
        return api
            .dndRequest<DamageTypeModel>(baseLink.url)
            .then((value) => value.toEntity());
      case MagicSchoolEntity:
        return api
            .dndRequest<MagicSchoolModel>(baseLink.url)
            .then((value) => value.toEntity());
      default:
        throw 'not found domain to data DTO relation';
    }
  }

  @override
  Future<List<ReferenceBaseEntity<SpellEntity>>> fetchSpells(
    LibraryCategoryEntity category,
    int spellLevel,
  ) {
    return api.dndRequestList<ReferenceBaseModel>(
      '/api/${category.path}',
      queryParameters: {
        'level': [spellLevel]
      },
    ).then((value) => value.toEntity());
  }
}
