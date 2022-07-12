import 'package:flutter/material.dart';

import '../../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../../../app/utils/app_context.dart';
import '../../../../library/presentation/components/widely_used/dnd_base_entity_link.dart';
import '../../../../library/presentation/components/widely_used/dnd_description_info_card.dart';
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
        Text(
          locale.isUsedForSkills,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        GinSeparatedColumn(
          itemCount: abilityScore.skills.length,
          itemBuilder: (context, index) => Align(
            alignment: Alignment.centerLeft,
            child: DndBaseEntityLink(dndReference: abilityScore.skills[index]),
          ),
          separatorHeight: 0,
        ),
      ],
    );
  }
}
