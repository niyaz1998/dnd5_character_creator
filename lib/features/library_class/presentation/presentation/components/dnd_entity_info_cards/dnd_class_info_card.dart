import 'package:flutter/material.dart';

import '../../../../../../app/utils/app_context.dart';
import '../../../../../library/presentation/components/widely_used/dnd_choice_list.dart';
import '../../../../../library/presentation/components/widely_used/dnd_reference_list.dart';
import '../../../../domain/entities/dnd_class_entity.dart';
import 'dnd_class/dnd_class_spellcasting_info_card.dart';

class DndClassInfoCard extends StatelessWidget {
  const DndClassInfoCard({
    Key? key,
    required this.dndClassEntity,
  }) : super(key: key);

  final DndClassEntity dndClassEntity;

  @override
  Widget build(BuildContext context) {
    var locale = context.appLocale;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          locale.hitDieSize(dndClassEntity.hitDie.toString()),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        if (dndClassEntity.equipment.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DndReferenceList(
              title: locale.startingEquipment,
              links: dndClassEntity.equipment,
            ),
          ),
        if (dndClassEntity.equipmentChoice != null)
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DndChoiceList(choice: dndClassEntity.equipmentChoice!),
          ),
        if (dndClassEntity.proficiencies.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DndReferenceList(
              title: locale.startingProficiencies,
              links: dndClassEntity.proficiencies,
            ),
          ),
        if (dndClassEntity.proficienciesChoice != null)
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DndChoiceList(choice: dndClassEntity.proficienciesChoice!),
          ),
        if (dndClassEntity.savingThrows.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DndReferenceList(
              title: locale.savingThrows,
              links: dndClassEntity.savingThrows,
            ),
          ),
        if (dndClassEntity.subclasses.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DndReferenceList(
              title: locale.subclasses,
              links: dndClassEntity.subclasses,
            ),
          ),
        DndSpellCastingInfoCard(
          spellCastingEntity: dndClassEntity.spellCasting,
        ),
      ],
    );
  }
}
