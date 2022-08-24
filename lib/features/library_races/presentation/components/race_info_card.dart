import 'package:flutter/material.dart';

import '../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../../app/utils/app_context.dart';
import '../../../library/presentation/components/widely_used/dnd_choice_list.dart';
import '../../../library/presentation/components/widely_used/dnd_reference_list.dart';
import '../../domain/entities/race/race_entity.dart';
import 'ability_bonus_entity_link.dart';

class RaceInfoCard extends StatelessWidget {
  const RaceInfoCard({
    Key? key,
    required this.race,
  }) : super(key: key);

  final RaceEntity race;

  @override
  Widget build(BuildContext context) {
    var locale = context.appLocale;
    var textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          locale.raceInfo(race.speed.toInt().toString(), race.size, race.age),
          style: textTheme.bodyMedium,
        ),
        const SizedBox(height: 10),
        GinSeparatedColumn(
          itemCount: race.abilityBonuses.length,
          itemBuilder: (context, index) => AbilityBonusEntityLink(
            abilityBonus: race.abilityBonuses[index],
          ),
          separatorHeight: 4,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.startingProficiencies,
          links: race.startingProficiencies,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.startingLanguages,
          links: race.languages,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.startingProficiencies,
          links: race.startingProficiencies,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.startingTraits,
          links: race.traits,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.subraces,
          links: race.subRaces,
        ),
        const SizedBox(height: 10),
        Text(
          race.alignment,
          style: textTheme.bodyMedium,
        ),
        const SizedBox(height: 10),
        if (race.startingProficiencyOptions != null)
          DndChoiceList(
            choice: race.startingProficiencyOptions!,
            title: locale.startingProficiencyOptions,
          ),
      ],
    );
  }
}
