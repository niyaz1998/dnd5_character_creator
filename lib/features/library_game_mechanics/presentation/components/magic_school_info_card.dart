import 'package:flutter/material.dart';

import '../../../library/presentation/components/widely_used/dnd_description_info_card.dart';
import '../../domain/entities/magic_school_entity.dart';

class MagicSchoolInfoCard extends StatelessWidget {
  const MagicSchoolInfoCard({Key? key, required this.magicSchool,}) : super(key: key);

  final MagicSchoolEntity magicSchool;

  @override
  Widget build(BuildContext context) {
    return DndDescriptionInfoCard(described: magicSchool);
  }
}
