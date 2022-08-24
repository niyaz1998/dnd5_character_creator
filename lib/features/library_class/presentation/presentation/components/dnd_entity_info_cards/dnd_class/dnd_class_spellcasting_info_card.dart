import 'package:flutter/material.dart';

import '../../../../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../../../../../app/utils/app_context.dart';
import '../../../../../domain/entities/dnd_class/spell_casting_entity.dart';

class DndSpellCastingInfoCard extends StatelessWidget {
  const DndSpellCastingInfoCard({
    Key? key,
    required this.spellCastingEntity,
  }) : super(key: key);

  final SpellCastingEntity? spellCastingEntity;

  @override
  Widget build(BuildContext context) {
    var locale = context.appLocale;
    var spellCasting = spellCastingEntity;
    if (spellCasting == null) {
      return const SizedBox();
    }
    return Theme(
      /// визуально отключает разделитель в [ExpansionTile]
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Text(
          locale.classAbleToCastFrom(spellCasting.level.toString()),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        children: [
          GinSeparatedColumn(
            itemCount: spellCasting.info.length,
            itemBuilder: (context, infoIndex) {
              return ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(
                  spellCasting.info[infoIndex].name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                children: [
                  GinSeparatedColumn(
                    itemCount: spellCasting.info[infoIndex].description.length,
                    itemBuilder: (context, descIndex) {
                      return Text(
                        spellCasting.info[infoIndex].description[descIndex],
                        style: Theme.of(context).textTheme.bodySmall,
                      );
                    },
                    separatorHeight: 4,
                  )
                ],
              );
            },
            separatorHeight: 8,
          ),
        ],
      ),
    );
  }
}
