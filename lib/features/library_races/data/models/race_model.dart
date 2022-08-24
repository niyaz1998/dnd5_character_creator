import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/choice_base_model.codegen.dart';
import '../../../library/data/models/base/reference_base_model.codegen.dart';
import '../../domain/entities/race/race_entity.dart';
import 'ability_bonus_model.dart';

part 'race_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RaceModel extends ReferenceBaseModel {
  const RaceModel({
    required super.url,
    required super.index,
    required super.name,
    required this.abilityBonuses,
    required this.speed,
    required this.alignment,
    required this.age,
    required this.size,
    required this.sizeDescription,
    required this.startingProficiencies,
    required this.startingProficiencyOptions,
    required this.languages,
    required this.languageDesc,
    required this.traits,
    required this.subRaces,
  });

  factory RaceModel.fromJson(Map<String, dynamic> json) =>
      _$RaceModelFromJson(json);

  @JsonKey(defaultValue: [])
  final List<AbilityBonusModel> abilityBonuses;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> startingProficiencies;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> languages;
  final double speed;
  final String alignment;
  final String age;
  final String size;
  final String sizeDescription;
  final ChoiceBaseModel? startingProficiencyOptions;
  final String languageDesc;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> traits;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> subRaces;

  @override
  Map<String, dynamic> toJson() => _$RaceModelToJson(this);
}

extension RaceToEntity on RaceModel {
  RaceEntity toEntity() => RaceEntity(
        index: index,
        name: name,
        abilityBonuses: abilityBonuses.toEntity(),
        speed: speed,
        alignment: alignment,
        age: age,
        size: size,
        sizeDescription: sizeDescription,
        startingProficiencies: startingProficiencies.toEntity(),
        startingProficiencyOptions: startingProficiencyOptions?.toEntity(),
        languages: languages.toEntity(),
        languageDesc: languageDesc,
        traits: traits.toEntity(),
        subRaces: subRaces.toEntity(),
      );
}

extension RaceListToEntity on List<RaceModel> {
  List<RaceEntity> toEntity() => map((e) => e.toEntity()).toList();
}
