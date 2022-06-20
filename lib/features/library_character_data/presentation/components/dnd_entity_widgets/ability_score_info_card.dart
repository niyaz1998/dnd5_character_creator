import 'package:flutter/material.dart';

import '../../../../library/presentation/components/dnd_base_entity_link.dart';
import '../../../domain/entity/ability_score_entity.dart';

class AbilityScoreInfoCard extends StatelessWidget {
  const AbilityScoreInfoCard({
    Key? key,
    required this.abilityScore,
  }) : super(key: key);

  final AbilityScoreEntity abilityScore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          abilityScore.fullName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        Text(
          'Is used for',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Align(
            alignment: Alignment.centerLeft,
            child: DndBaseEntityLink(dndReference: abilityScore.skills[index]),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 0),
          itemCount: abilityScore.skills.length,
        ),
      ],
    );
  }
}
