import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/presentation/router/app_router.dart';
import '../../domain/entities/base/reference_base_entity.dart';

class DndBaseEntityLink extends StatelessWidget {
  const DndBaseEntityLink({
    Key? key,
    required this.dndReference,
  }) : super(key: key);

  final ReferenceBaseEntity dndReference;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(
          LibraryItemRoute(referenceBase: dndReference),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          dndReference.name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      ),
    );
  }
}
