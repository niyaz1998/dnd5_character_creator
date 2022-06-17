import '../../../../library/domain/entities/base/description_base_entity.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../alignment_entity.dart';

class BackgroundIdeal extends DescribedBaseEntity {
  const BackgroundIdeal({
    required super.description,
    required this.alignments,
  });

  final List<ReferenceBaseEntity<AlignmentEntity>> alignments;
}
