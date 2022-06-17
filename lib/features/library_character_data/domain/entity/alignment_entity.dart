import '../../../library/domain/entities/base/description_base_entity.dart';

class AlignmentEntity extends DescribedBaseEntity {
  const AlignmentEntity({
    required this.abbreviation,
    required super.description,
  });

  final String abbreviation;
}
