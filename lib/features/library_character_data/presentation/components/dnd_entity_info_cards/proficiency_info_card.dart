import 'package:flutter/material.dart';

import '../../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../../../app/utils/app_context.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../../library/presentation/components/widely_used/dnd_base_entity_link.dart';
import '../../../domain/entity/proficiency_entity.dart';

class ProficiencyInfoCard extends StatelessWidget {
  const ProficiencyInfoCard({
    Key? key,
    required this.proficiencyEntity,
  }) : super(key: key);

  final ProficiencyEntity proficiencyEntity;

  @override
  Widget build(BuildContext context) {
    var locale = context.appLocale;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'General category is ${proficiencyEntity.type}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 20),
        _StartsWithProficiencyList(
          usersPresentText: locale.racesStartsWithProficiency,
          entities: proficiencyEntity.races,
          noUsersPresentText: locale.noRaceStartsWithProficiency,
        ),
        const SizedBox(height: 20),
        _StartsWithProficiencyList(
          usersPresentText: locale.classesStartsWithProficiency,
          entities: proficiencyEntity.classes,
          noUsersPresentText: locale.noClassStartsWithProficiency,
        ),
      ],
    );
  }
}

class _StartsWithProficiencyList extends StatelessWidget {
  const _StartsWithProficiencyList({
    Key? key,
    required this.usersPresentText,
    required this.noUsersPresentText,
    required this.entities,
  }) : super(key: key);

  final String usersPresentText;
  final String noUsersPresentText;
  final List<ReferenceBaseEntity> entities;

  @override
  Widget build(BuildContext context) {
    if (entities.isEmpty) {
      return Text(
        noUsersPresentText,
        style: Theme.of(context).textTheme.titleMedium,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          usersPresentText,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        GinSeparatedColumn(
          itemCount: entities.length,
          itemBuilder: (context, index) => Align(
            alignment: Alignment.centerLeft,
            child: DndBaseEntityLink(
              dndReference: entities[index],
            ),
          ),
          separatorHeight: 0,
        ),
      ],
    );
  }
}
