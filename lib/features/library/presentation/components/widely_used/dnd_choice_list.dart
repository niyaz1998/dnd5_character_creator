import 'package:flutter/material.dart';

import '../../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../domain/entities/base/choice_base_entity.dart';
import 'dnd_base_entity_link.dart';

class DndChoiceList extends StatelessWidget {
  const DndChoiceList({
    Key? key,
    required this.choice,
  }) : super(key: key);

  final ChoiceBaseInterface choice;

  @override
  Widget build(BuildContext context) {
    var choiceLocal = choice;
    if (choiceLocal is ChoiceBaseEntity) {
      return Column(
        children: [
          Text(
            '${choice.type}. Choose ${choice.choose} from',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          GinSeparatedColumn(
            itemCount: choice.from.length,
            itemBuilder: (context, index) =>
                DndBaseEntityLink(dndReference: choiceLocal.from[index]),
            separatorHeight: 4,
          ),
        ],
      );
    } else if (choiceLocal is ChoiceStringBaseEntity) {
      return Column(
        children: [
          Text(
            '${choice.type}. Choose ${choice.choose} from',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          GinSeparatedColumn(
            itemCount: choice.from.length,
            itemBuilder: (context, index) => Text(
              choiceLocal.from[index],
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            separatorHeight: 4,
          ),
        ],
      );
    }
    return const SizedBox();
  }
}
