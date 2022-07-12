import 'package:flutter/material.dart';

import '../../../../library/presentation/components/widely_used/dnd_base_entity_link.dart';
import '../../../../library/presentation/components/widely_used/dnd_description_info_card.dart';
import '../../../domain/entity/skill_entity.dart';

class SkillInfoCard extends StatelessWidget {
  const SkillInfoCard({
    Key? key,
    required this.skillEntity,
  }) : super(key: key);

  final SkillEntity skillEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DndDescriptionInfoCard(described: skillEntity),
        const SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              child: Text(
                'Based on',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            DndBaseEntityLink(dndReference: skillEntity.abilityScore),
          ],
        ),
      ],
    );
  }
}
