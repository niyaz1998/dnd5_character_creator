import '../../../library/data/models/base/reference_base_model.dart';
import '../../../library/domain/entities/base/dnd_base_entity.dart';

class ProficiencyEntity extends DndBaseEntity {
  const ProficiencyEntity({
    required this.type,
    required this.classes,
    required this.races,
    required this.reference,
  });

  /// The general category of the proficiency
  final String type;

  /// TODO: add expected type
  /// Classes that start with this proficiency
  final List<ReferenceBaseModel> classes;

  /// TODO: add expected type
  /// Races that start with this proficiency
  final List<ReferenceBaseModel> races;

  /// reference to the full description of the related resource.
  final ReferenceBaseModel reference;
}
