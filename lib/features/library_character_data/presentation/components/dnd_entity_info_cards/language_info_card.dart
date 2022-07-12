import 'package:flutter/material.dart';

import '../../../../../app/data/util/enum_util.dart';
import '../../../../library/presentation/components/widely_used/dnd_description_info_card.dart';
import '../../../domain/entity/language_entity.dart';

class LanguageInfoCard extends StatelessWidget {
  const LanguageInfoCard({
    Key? key,
    required this.languageEntity,
  }) : super(key: key);

  final LanguageEntity languageEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          languageEntity.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        DndDescriptionInfoCard(described: languageEntity),
        const SizedBox(height: 20),
        Text(
          'Rarity type is ${enumToString(languageEntity.type)}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 20),
        Text(
          'Uses ${languageEntity.script} script',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 20),
        Text(
          'Typical speakers are ${languageEntity.typicalSpeakers.join(', ')}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
