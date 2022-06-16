import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/presentation/router/app_router.dart';
import '../../domain/entities/library_category_entity.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.libraryCategoryEntity,
  }) : super(key: key);

  final LibraryCategoryEntity libraryCategoryEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(CategoryRoute(
            libraryCategoryEntity: libraryCategoryEntity,
          ));
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  libraryCategoryEntity.localeKey,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}
