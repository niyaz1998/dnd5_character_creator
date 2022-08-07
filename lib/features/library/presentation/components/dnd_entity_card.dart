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
import '../../../library_spells/domain/spell_entity.dart';
import '../../../library_spells/presentation/spell_entity_info_card.dart';
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
    } else if (entity is SpellEntity) {
      return SpellEntityInfoCard(spellEntity: entity);
    }
    return Column(
      children: [
        Text(
          dndBaseEntity.name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 10),
        Text(dndBaseEntity.runtimeType.toString()),
      ],
    );
  }
}
