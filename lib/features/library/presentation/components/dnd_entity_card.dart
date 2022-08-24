import 'package:flutter/material.dart';

import '../../../library_character_data/domain/entity/ability_score_entity.dart';
import '../../../library_character_data/domain/entity/alignment_entity.dart';
import '../../../library_character_data/domain/entity/language_entity.dart';
import '../../../library_character_data/domain/entity/proficiency_entity.dart';
import '../../../library_character_data/domain/entity/skill_entity.dart';
import '../../../library_character_data/presentation/components/dnd_entity_info_cards/ability_score_info_card.dart';
import '../../../library_character_data/presentation/components/dnd_entity_info_cards/alignment_info_card.dart';
import '../../../library_character_data/presentation/components/dnd_entity_info_cards/language_info_card.dart';
import '../../../library_character_data/presentation/components/dnd_entity_info_cards/proficiency_info_card.dart';
import '../../../library_character_data/presentation/components/dnd_entity_info_cards/skill_info_card.dart';
import '../../../library_game_mechanics/domain/entities/condition_entity.dart';
import '../../../library_game_mechanics/domain/entities/damage_type_entity.dart';
import '../../../library_game_mechanics/domain/entities/magic_school_entity.dart';
import '../../../library_game_mechanics/presentation/components/condition_info_card.dart';
import '../../../library_game_mechanics/presentation/components/damage_type_info_card.dart';
import '../../../library_game_mechanics/presentation/components/magic_school_info_card.dart';
import '../../../library_class/domain/entities/dnd_class_entity.dart';
import '../../../library_class/presentation/presentation/components/dnd_entity_info_cards/dnd_class_info_card.dart';
import '../../domain/entities/base/dnd_base_entity.dart';

class DndEntityCard extends StatelessWidget {
  const DndEntityCard({
    Key? key,
    required this.dndBaseEntity,
  }) : super(key: key);

  final DndBaseEntity dndBaseEntity;

  @override
  Widget build(BuildContext context) {
    var entity = dndBaseEntity;
    if (entity is AbilityScoreEntity) {
      return AbilityScoreInfoCard(abilityScore: entity);
    } else if (entity is AlignmentEntity) {
      return AlignmentInfoCard(alignment: entity);
    } else if (entity is LanguageEntity) {
      return LanguageInfoCard(languageEntity: entity);
    } else if (entity is ProficiencyEntity) {
      return ProficiencyInfoCard(proficiencyEntity: entity);
    } else if (entity is SkillEntity) {
      return SkillInfoCard(skillEntity: entity);
    } else if (entity is DndClassEntity) {
      return DndClassInfoCard(dndClassEntity: entity);
    } else if (entity is ConditionEntity) {
      return ConditionInfoCard(conditionEntity: entity);
    } else if (entity is DamageTypeEntity) {
      return DamageTypeInfoCard(damageType: entity);
    } else if (entity is MagicSchoolEntity) {
      return MagicSchoolInfoCard(magicSchool: entity);
    }
    return Column(
      children: [
        Text(dndBaseEntity.runtimeType.toString()),
      ],
    );
  }
}
