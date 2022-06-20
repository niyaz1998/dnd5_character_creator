import 'package:flutter/material.dart';

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
      children: [
        Text(abilityScore.fullName),

      ],
    );
  }
}
