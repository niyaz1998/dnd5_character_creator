import 'package:json_annotation/json_annotation.dart';

import '../../../../library/data/models/base/choice_base_model.dart';
import '../../../../library/data/models/base/choice_string_base_model.dart';
import '../../../../library/data/models/base/reference_base_model.dart';
import '../../../domain/entity/background/background_entity.dart';
import 'background_feature_model.dart';

part 'background_model.g.dart';

@JsonSerializable()
class BackgroundModel extends ReferenceBaseModel {
  const BackgroundModel({
    required this.startingProficiencies,
    required this.startingEquipment,
    required this.startingEquipmentOptions,
    required this.languageOptions,
    required this.feature,
    required this.personalityTraits,
    required this.ideals,
    required this.bonds,
    required this.flaws,
    required super.url,
    required super.index,
    required super.name,
  });

  factory BackgroundModel.fromJson(Map<String, dynamic> json) =>
      _$BackgroundModelFromJson(json);

  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> startingProficiencies;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> startingEquipment;
  @JsonKey(defaultValue: [])
  final List<ChoiceBaseModel> startingEquipmentOptions;
  final ChoiceBaseModel? languageOptions;
  final BackgroundFeatureModel feature;

  @JsonKey(defaultValue: {})
  /// API not documented here
  final Map<String, dynamic> personalityTraits;
  final ChoiceBaseModel ideals;
  final ChoiceStringBaseModel bonds;
  final ChoiceStringBaseModel flaws;

  @override
  Map<String, dynamic> toJson() => _$BackgroundModelToJson(this);
}

extension BackgroundToEntity on BackgroundModel {
  BackgroundEntity toEntity() => BackgroundEntity(
        startingProficiencies: startingProficiencies.toEntity(),
        startingEquipment: startingEquipment.toEntity(),
        startingEquipmentOptions: startingEquipmentOptions.toEntity(),
        languageOptions: languageOptions?.toEntity(),
        feature: feature.toEntity(),
        personalityTraits: personalityTraits,
        ideals: ideals.toEntity(),
        bonds: bonds.toEntity(),
        flaws: flaws.toEntity(),
        index: index,
        name: name,
      );
}

extension BackgroundListToEntity on List<BackgroundModel> {
  List<BackgroundEntity> toEntity() => map((e) => e.toEntity()).toList();
}
