import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../app/utils/app_context.dart';
import '../../library/presentation/components/widely_used/dnd_base_entity_link.dart';
import '../domain/spell_damage_entity.dart';

class SpellDamage extends StatelessWidget {
  const SpellDamage({
    Key? key,
    required this.spellDamageEntity,
  }) : super(key: key);

  final SpellDamageEntity spellDamageEntity;

  @override
  Widget build(BuildContext context) {
    var locale = context.appLocale;
    JsonEncoder encoder = const JsonEncoder.withIndent(' ');
    String? prettyDamageAtLevels;
    if (spellDamageEntity.damageAtLevels != null) {
      prettyDamageAtLevels = encoder.convert(
        spellDamageEntity.damageAtLevels,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                locale.damageType,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            DndBaseEntityLink(dndReference: spellDamageEntity.damageType),
          ],
        ),
        const SizedBox(height: 10),
        if (prettyDamageAtLevels != null)
          Text(
            prettyDamageAtLevels,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
      ],
    );
  }
}
