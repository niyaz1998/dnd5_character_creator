import 'package:flutter/material.dart';

import '../../../../../app/presentation/widgets/common/gin_separated_column.dart';
import '../../../domain/entities/base/description_base_entity.dart';

class DndDescriptionInfoCard extends StatelessWidget {
  const DndDescriptionInfoCard({
    Key? key,
    required this.described,
  }) : super(key: key);

  final DescribedBaseEntity described;

  @override
  Widget build(BuildContext context) {
    return GinSeparatedColumn(
      itemCount: described.description.length,
      itemBuilder: (context, index) => Text(
        described.description[index],
      ),
      separatorHeight: 4,
    );
  }
}
