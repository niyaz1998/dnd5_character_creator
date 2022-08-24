import 'package:flutter/material.dart';

import '../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../../app/utils/app_context.dart';
import '../../../library/presentation/components/widely_used/dnd_choice_list.dart';
import '../../../library/presentation/components/widely_used/dnd_reference_list.dart';
import '../../domain/entities/race/sub_race_entity.dart';
import 'ability_bonus_entity_link.dart';

class SubRaceInfoCard extends StatelessWidget {
  const SubRaceInfoCard({
    Key? key,
    required this.subRace,
  }) : super(key: key);

  final SubRaceEntity subRace;

  @override
  Widget build(BuildContext context) {
    var locale = context.appLocale;
    return Column(
      children: [
        GinSeparatedColumn(
          itemCount: subRace.abilityBonuses.length,
          itemBuilder: (context, index) => AbilityBonusEntityLink(
            abilityBonus: subRace.abilityBonuses[index],
          ),
          separatorHeight: 4,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.startingProficiencies,
          links: subRace.startingProficiencies,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.startingLanguages,
          links: subRace.languages,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.startingProficiencies,
          links: subRace.startingProficiencies,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: locale.startingTraits,
          links: subRace.racialTraits,
        ),
        if (subRace.languageOptions != null)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: DndChoiceList(choice: subRace.languageOptions!),
          ),
      ],
    );
  }
}
