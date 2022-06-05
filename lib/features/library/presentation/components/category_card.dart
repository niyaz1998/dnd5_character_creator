import 'package:flutter/material.dart';

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
    );
  }
}
