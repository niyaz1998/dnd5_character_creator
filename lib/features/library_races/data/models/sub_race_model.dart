import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/choice_base_model.codegen.dart';
import '../../../library/data/models/base/reference_base_model.codegen.dart';
import '../../domain/entities/race/sub_race_entity.dart';
import 'ability_bonus_model.dart';

part 'sub_race_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SubRaceModel extends ReferenceBaseModel {
  const SubRaceModel({
    required this.abilityBonuses,
    required this.startingProficiencies,
    required this.languages,
    required this.race,
    required this.languageOptions,
    required this.racialTraits,
    required super.url,
    required super.index,
    required super.name,
  });

  factory SubRaceModel.fromJson(Map<String, dynamic> json) =>
      _$SubRaceModelFromJson(json);

  @JsonKey(defaultValue: [])
  final List<AbilityBonusModel> abilityBonuses;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> startingProficiencies;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> languages;
  final ReferenceBaseModel race;
  final ChoiceBaseModel? languageOptions;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> racialTraits;

  @override
  Map<String, dynamic> toJson() => _$SubRaceModelToJson(this);
}

extension SubRaceToEntity on SubRaceModel {
  SubRaceEntity toEntity() => SubRaceEntity(
        name: name,
        index: index,
        abilityBonuses: abilityBonuses.toEntity(),
        startingProficiencies: startingProficiencies.toEntity(),
        languages: languages.toEntity(),
        languageOptions: languageOptions?.toEntity(),
        race: race.toEntity(),
        racialTraits: racialTraits.toEntity(),
      );
}

extension SubRaceListToEntity on List<SubRaceModel> {
  List<SubRaceEntity> toEntity() => map((e) => e.toEntity()).toList();
}
