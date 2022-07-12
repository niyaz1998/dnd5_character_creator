import 'package:flutter/material.dart';

import '../../../../library/presentation/components/widely_used/dnd_description_info_card.dart';
import '../../../domain/entity/alignment_entity.dart';

class AlignmentInfoCard extends StatelessWidget {
  const AlignmentInfoCard({
    Key? key,
    required this.alignment,
  }) : super(key: key);

  final AlignmentEntity alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          alignment.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        DndDescriptionInfoCard(described: alignment),
        const SizedBox(height: 10),
        Text(
          'Abbreviation: ${alignment.abbreviation}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
