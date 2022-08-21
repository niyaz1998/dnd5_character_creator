import 'package:flutter/material.dart';

import '../../../library/presentation/components/widely_used/dnd_description_info_card.dart';
import '../../domain/entities/condition_entity.dart';

class ConditionInfoCard extends StatelessWidget {
  const ConditionInfoCard({
    Key? key,
    required this.conditionEntity,
  }) : super(key: key);

  final ConditionEntity conditionEntity;

  @override
  Widget build(BuildContext context) {
    return DndDescriptionInfoCard(described: conditionEntity);
  }
}
