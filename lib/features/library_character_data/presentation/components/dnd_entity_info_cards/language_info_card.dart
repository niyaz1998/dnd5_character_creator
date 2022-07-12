import 'package:flutter/material.dart';

import '../../../../../app/data/util/enum_util.dart';
import '../../../../../app/utils/app_context.dart';
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
    var locale = context.appLocale;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DndDescriptionInfoCard(described: languageEntity),
        const SizedBox(height: 20),
        Text(
          locale.languageType(enumToString(languageEntity.type)),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 20),
        Text(
          locale.languageScript(languageEntity.script),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 20),
        Text(
          locale.typicalSpeakers(languageEntity.typicalSpeakers.join(', ')),
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
