import 'package:flutter/material.dart';

import '../../../../../app/utils/app_context.dart';
import '../../../../library/presentation/components/widely_used/dnd_description_info_card.dart';
import '../../../../library/presentation/components/widely_used/dnd_reference_list.dart';
import '../../../domain/entity/ability_score_entity.dart';

class AbilityScoreInfoCard extends StatelessWidget {
  const AbilityScoreInfoCard({
    Key? key,
    required this.abilityScore,
  }) : super(key: key);

  final AbilityScoreEntity abilityScore;

  @override
  Widget build(BuildContext context) {
    var locale = context.appLocale;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DndDescriptionInfoCard(described: abilityScore),
        const SizedBox(height: 30),
        DndReferenceList(
          links: abilityScore.skills,
          title: locale.isUsedForSkills,
        ),
      ],
    );
  }
}
