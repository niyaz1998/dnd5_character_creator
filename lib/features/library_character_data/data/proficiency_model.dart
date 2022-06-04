import 'package:dnd5_character_creator/app/data/models/base/description_base_model.dart';
import 'package:dnd5_character_creator/app/data/models/base/reference_base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proficiency_model.g.dart';

@JsonSerializable()
class ProficiencyModel extends ReferenceBaseModel {
  /// The general category of the proficiency
  final String type;
  /// Classes that start with this proficiency
  final List<ReferenceBaseModel> classes;
  /// Races that start with this proficiency
  final List<ReferenceBaseModel> races;
  /// reference to the full description of the related resource.
  final ReferenceBaseModel reference;

  ProficiencyModel({
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

  @override
  Map<String, dynamic> toJson() => _$ProficiencyModelToJson(this);
}
