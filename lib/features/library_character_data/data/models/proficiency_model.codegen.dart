import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/reference_base_model.codegen.dart';
import '../../domain/entity/proficiency_entity.dart';

part 'proficiency_model.codegen.g.dart';

@JsonSerializable()
class ProficiencyModel extends ReferenceBaseModel {
  const ProficiencyModel({
    required this.type,
    required this.classes,
    required this.races,
    required this.reference,
    required super.url,
    required super.index,
    required super.name,
  });

  factory ProficiencyModel.fromJson(Map<String, dynamic> json) =>
      _$ProficiencyModelFromJson(json);

  /// The general category of the proficiency
  final String type;

  /// Classes that start with this proficiency
  final List<ReferenceBaseModel> classes;

  /// Races that start with this proficiency
  final List<ReferenceBaseModel> races;

  /// reference to the full description of the related resource.
  final ReferenceBaseModel reference;

  @override
  Map<String, dynamic> toJson() => _$ProficiencyModelToJson(this);
}

extension ProficiencyToEntity on ProficiencyModel {
  ProficiencyEntity toEntity() => ProficiencyEntity(
        type: type,
        classes: classes.toEntity(),
        races: races.toEntity(),
        index: index,
        name: name,
        reference: reference,
      );
}

extension ProficiencyListToEntity on List<ProficiencyModel> {
  List<ProficiencyEntity> toEntity() => map((e) => e.toEntity()).toList();
}
