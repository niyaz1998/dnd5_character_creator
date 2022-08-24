import 'package:flutter/material.dart';

import '../../../library/presentation/components/widely_used/dnd_description_info_card.dart';
import '../../domain/entities/damage_type_entity.dart';

class DamageTypeInfoCard extends StatelessWidget {
  const DamageTypeInfoCard({
    Key? key,
    required this.damageType,
  }) : super(key: key);

  final DamageTypeEntity damageType;

  @override
  Widget build(BuildContext context) {
    return DndDescriptionInfoCard(described: damageType);
  }
}
