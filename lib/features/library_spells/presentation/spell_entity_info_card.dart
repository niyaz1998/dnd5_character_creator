import 'package:flutter/material.dart';

import '../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../app/utils/app_context.dart';
import '../../library/presentation/components/widely_used/dnd_base_entity_link.dart';
import '../../library/presentation/components/widely_used/dnd_description_info_card.dart';
import '../domain/spell_entity.dart';
import 'spell_components_icon.dart';
import 'spell_damage.dart';

class SpellEntityInfoCard extends StatelessWidget {
  const SpellEntityInfoCard({
    Key? key,
    required this.spellEntity,
  }) : super(key: key);

  final SpellEntity spellEntity;

  @override
  Widget build(BuildContext context) {
    var locale = context.appLocale;
    var spellComponents = [
      ...spellEntity.components
          .map((e) => SpellComponentsIcon(spellComponent: e))
          .toList(),
      if (spellEntity.ritual) const SpellComponentsIcon(ritual: true),
      if (spellEntity.concentration)
        const SpellComponentsIcon(concentration: true),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DndDescriptionInfoCard(described: spellEntity),
        const SizedBox(height: 10),
        if (spellEntity.higherLevels != null)
          GinSeparatedColumn(
            itemCount: spellEntity.higherLevels!.length,
            itemBuilder: (context, index) =>
                Text(
                  spellEntity.higherLevels![index],
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium,
                ),
            separatorHeight: 4,
          ),
        const SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              child: Text(
                locale.spellLevel(spellEntity.level.toString()),
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium,
              ),
            ),
            const SizedBox(width: 4),
            DndBaseEntityLink(dndReference: spellEntity.school),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          locale.spellRange(spellEntity.range),
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        ),
        const SizedBox(height: 10),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.end,
          children: [
            Text(
              locale.spellComponents,
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium,
            ),
            ...spellComponents.fold<List<Widget>>(
              [],
                  (p, e) => p + [const SizedBox(width: 10), e],
            ).toList(),
          ],
        ),
        if (spellEntity.material != null)
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              locale.materialComponent(spellEntity.material!),
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium,
            ),
          ),
        const SizedBox(height: 10),
        Text(
          locale.spellDuration(spellEntity.duration),
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        ),
        const SizedBox(height: 10),
        Text(
          locale.castTime(spellEntity.castingTime),
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        ),
        if (spellEntity.attackType != null)
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              locale.attackType(spellEntity.attackType!),
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium,
            ),
          ),
        if (spellEntity.damage != null)
          SpellDamage(spellDamageEntity: spellEntity.damage!)
      ],
    );
  }
}
