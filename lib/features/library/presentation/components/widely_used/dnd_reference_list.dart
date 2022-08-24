import 'package:flutter/material.dart';

import '../../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../domain/entities/base/reference_base_entity.dart';
import 'dnd_base_entity_link.dart';

class DndReferenceList extends StatelessWidget {
  const DndReferenceList({
    Key? key,
    required this.title,
    required this.links,
  }) : super(key: key);

  final String title;
  final List<ReferenceBaseEntity> links;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        GinSeparatedColumn(
          itemCount: links.length,
          itemBuilder: (context, index) => DndBaseEntityLink(
            dndReference: links[index],
          ),
          separatorHeight: 4,
        ),
      ],
    );
  }
}
