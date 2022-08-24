import 'package:flutter/material.dart';

import '../../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../../../app/utils/app_context.dart';
import '../../../domain/entities/base/choice_base_entity.dart';
import 'dnd_reference_list.dart';

class DndChoiceList extends StatelessWidget {
  const DndChoiceList({
    Key? key,
    required this.choice,
  }) : super(key: key);

  final ChoiceBaseInterface choice;

  @override
  Widget build(BuildContext context) {
    var choiceLocal = choice;
    var locale = context.appLocale;
    if (choiceLocal is ChoiceBaseEntity) {
      return DndReferenceList(
        links: choiceLocal.from,
        title: locale.choiceListTitle(choice.type, choice.choose),
      );
    } else if (choiceLocal is ChoiceStringBaseEntity) {
      return Column(
        children: [
          Text(
            locale.choiceListTitle(choice.type, choice.choose),
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
