import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/presentation/router/app_router.dart';
import '../../domain/entities/base/reference_base_entity.dart';
import '../../domain/state/library_category/library_category_cubit.dart';

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
            libraryCategoryEntity:
                LibraryCategoryCubit.of(context).libraryCategoryEntity,
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
