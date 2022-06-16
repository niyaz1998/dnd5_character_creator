import '../../../library/data/models/base/reference_base_model.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';

class ProficiencyModel extends ReferenceBaseEntity {
  const ProficiencyModel({
    required this.type,
    required this.classes,
    required this.races,
    required this.reference,
    required super.url,
    required super.index,
    required super.name,
  });

  /// The general category of the proficiency
  final String type;

  /// Classes that start with this proficiency
  final List<ReferenceBaseModel> classes;

  /// Races that start with this proficiency
  final List<ReferenceBaseModel> races;

  /// reference to the full description of the related resource.
  final ReferenceBaseModel reference;
}
