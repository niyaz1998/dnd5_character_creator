import 'package:flutter/material.dart';

import '../../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../../library/presentation/components/dnd_choice_list.dart';
import '../../../../library/presentation/components/dnd_reference_list.dart';
import '../../../domain/entity/background/background_entity.dart';

class BackgroundInfoCard extends StatelessWidget {
  const BackgroundInfoCard({
    Key? key,
    required this.background,
  }) : super(key: key);

  final BackgroundEntity background;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          background.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: 'Starting proficiencies',
          links: background.startingProficiencies,
        ),
        const SizedBox(height: 10),
        DndReferenceList(
          title: 'Starting equipment',
          links: background.startingEquipment,
        ),
        const SizedBox(height: 10),
        GinSeparatedColumn(
          itemCount: background.startingEquipmentOptions.length,
          itemBuilder: (context, index) =>
              DndChoiceList(choice: background.startingEquipmentOptions[index]),
          separatorHeight: 8,
        ),
        if (background.languageOptions != null)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: DndChoiceList(choice: background.languageOptions!),
          ),
        const SizedBox(height: 10),
        Text(
          'Personality',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        DndChoiceList(choice: background.bonds),
        const SizedBox(height: 8),
        DndChoiceList(choice: background.flaws),
        const SizedBox(height: 8),
        DndChoiceList(choice: background.ideals),
      ],
    );
  }
}
