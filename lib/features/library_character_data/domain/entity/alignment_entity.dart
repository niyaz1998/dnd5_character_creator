import '../../../library/domain/entities/base/description_base_entity.dart';

class AlignmentModel extends DescribedBaseEntity {
  const AlignmentModel({
    required this.abbreviation,
    required super.description,
  });

  final String abbreviation;
}
