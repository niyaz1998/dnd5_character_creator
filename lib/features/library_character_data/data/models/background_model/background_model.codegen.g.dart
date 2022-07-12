// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundModel _$BackgroundModelFromJson(Map<String, dynamic> json) =>
    BackgroundModel(
      startingProficiencies: (json['startingProficiencies'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      startingEquipment: (json['startingEquipment'] as List<dynamic>?)
              ?.map(
                  (e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      startingEquipmentOptions: (json['startingEquipmentOptions']
                  as List<dynamic>?)
              ?.map((e) => ChoiceBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      languageOptions: json['languageOptions'] == null
          ? null
          : ChoiceBaseModel.fromJson(
              json['languageOptions'] as Map<String, dynamic>),
      feature: BackgroundFeatureModel.fromJson(
          json['feature'] as Map<String, dynamic>),
      personalityTraits:
          json['personalityTraits'] as Map<String, dynamic>? ?? {},
      ideals: ChoiceBaseModel.fromJson(json['ideals'] as Map<String, dynamic>),
      bonds:
          ChoiceStringBaseModel.fromJson(json['bonds'] as Map<String, dynamic>),
      flaws:
          ChoiceStringBaseModel.fromJson(json['flaws'] as Map<String, dynamic>),
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BackgroundModelToJson(BackgroundModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'startingProficiencies': instance.startingProficiencies,
      'startingEquipment': instance.startingEquipment,
      'startingEquipmentOptions': instance.startingEquipmentOptions,
      'languageOptions': instance.languageOptions,
      'feature': instance.feature,
      'personalityTraits': instance.personalityTraits,
      'ideals': instance.ideals,
      'bonds': instance.bonds,
      'flaws': instance.flaws,
    };
