import '../../../library/domain/entities/base/description_base_entity.dart';

class AlignmentEntity extends DescribedBaseEntity {
  const AlignmentEntity({
    required this.abbreviation,
    required super.description,
    required super.index,
    required super.name,
  });

  final String abbreviation;
}
