import 'package:flutter/material.dart';

import '../../../library_character_data/domain/entity/ability_score_entity.dart';
import '../../../library_character_data/presentation/components/dnd_entity_widgets/ability_score_info_card.dart';
import '../../domain/entities/base/dnd_base_entity.dart';

class DndBaseEntityInfo extends StatelessWidget {
  const DndBaseEntityInfo({
    Key? key,
    required this.dndBaseEntity,
  }) : super(key: key);

  final DndBaseEntity dndBaseEntity;

  @override
  Widget build(BuildContext context) {
    var entity = dndBaseEntity;
    if (entity is AbilityScoreEntity) {
      return AbilityScoreInfoCard(abilityScore: entity);
    }
    return Container();
  }
}
