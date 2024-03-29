import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../app/presentation/router/app_router.dart';
import '../../../domain/entities/base/reference_base_entity.dart';

class CategoryItemCard extends StatelessWidget {
  const CategoryItemCard({
    Key? key,
    required this.referenceBaseModel,
  }) : super(key: key);

  final ReferenceBaseEntity referenceBaseModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(
          LibraryItemRoute(
            referenceBase: referenceBaseModel,
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            referenceBaseModel.name,
          ),
        ),
      ),
    );
  }
}
