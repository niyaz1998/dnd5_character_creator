import '../../../../library/domain/entities/base/description_base_entity.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../alignment_entity.dart';

class BackgroundIdealEntity extends DescribedBaseEntity {
  const BackgroundIdealEntity({
    required super.description,
    required this.alignments,
    required super.index,
    required super.name,
  });

  final List<ReferenceBaseEntity<AlignmentEntity>> alignments;
}
