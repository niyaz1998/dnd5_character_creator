import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/presentation/router/app_router.dart';
import '../../domain/entities/race/ability_bonus_entity.dart';

class AbilityBonusEntityLink extends StatelessWidget {
  const AbilityBonusEntityLink({
    Key? key,
    required this.abilityBonus,
  }) : super(key: key);

  final AbilityBonusEntity abilityBonus;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(
          LibraryItemRoute(referenceBase: abilityBonus.abilityScore),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          '+${abilityBonus.bonus.toInt()} ${abilityBonus.abilityScore.name}',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      ),
    );
  }
}
