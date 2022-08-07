import 'package:flutter/material.dart';

import '../../../../../app/utils/app_context.dart';
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
        DndDescriptionInfoCard(described: alignment),
        const SizedBox(height: 10),
        Text(
          context.appLocale.abbreviationIs(alignment.abbreviation),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
