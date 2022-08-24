// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_base_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoiceBaseModel _$ChoiceBaseModelFromJson(Map<String, dynamic> json) =>
    ChoiceBaseModel(
      description: json['desc'] == null
          ? []
          : const DescriptionConverter().fromJson(json['desc'] as Object),
      choose: json['choose'] as int,
      type: json['type'] as String,
      from: ChoiceFromField.fromJson(json['from'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChoiceBaseModelToJson(ChoiceBaseModel instance) =>
    <String, dynamic>{
      'desc': const DescriptionConverter().toJson(instance.description),
      'choose': instance.choose,
      'type': instance.type,
      'from': instance.from,
    };

ChoiceFromField _$ChoiceFromFieldFromJson(Map<String, dynamic> json) =>
    ChoiceFromField(
      optionSetType:
          $enumDecode(_$ChoiceFromTypeEnumMap, json['option_set_type']),
      options: (json['options'] as List<dynamic>?)
              ?.map((e) =>
                  ChoiceFromItemField.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ChoiceFromFieldToJson(ChoiceFromField instance) =>
    <String, dynamic>{
      'option_set_type': _$ChoiceFromTypeEnumMap[instance.optionSetType],
      'options': instance.options,
    };

const _$ChoiceFromTypeEnumMap = {
  ChoiceFromType.optionsArray: 'options_array',
};

ChoiceFromItemField _$ChoiceFromItemFieldFromJson(Map<String, dynamic> json) =>
    ChoiceFromItemField(
      optionType: $enumDecode(_$ChoiceFromItemTypeEnumMap, json['option_type']),
      item: ReferenceBaseModel.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChoiceFromItemFieldToJson(
        ChoiceFromItemField instance) =>
    <String, dynamic>{
      'option_type': _$ChoiceFromItemTypeEnumMap[instance.optionType],
      'item': instance.item,
    };

const _$ChoiceFromItemTypeEnumMap = {
  ChoiceFromItemType.reference: 'reference',
};
