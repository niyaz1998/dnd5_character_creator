import 'package:flutter/material.dart';

import '../../../../app/data/models/base/reference_base_model.dart';

class CategoryItemCard extends StatelessWidget {
  const CategoryItemCard({
    Key? key,
    required this.referenceBaseModel,
  }) : super(key: key);

  final ReferenceBaseModel referenceBaseModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          referenceBaseModel.name,
        ),
      ),
    );
  }
}
