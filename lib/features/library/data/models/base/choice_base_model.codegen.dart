import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/base/choice_base_entity.dart';
import '../../../domain/entities/base/dnd_base_entity.dart';
import '../json_parsers/description_parser.dart';
import 'reference_base_model.codegen.dart';

part 'choice_base_model.codegen.g.dart';

/// базовая модель dnd5e API
/// представляет собой выбор из каких то сущностей
@JsonSerializable()
@immutable
class ChoiceBaseModel {
  const ChoiceBaseModel({
    required this.description,
    required this.choose,
    required this.type,
    required this.from,
  });

  factory ChoiceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceBaseModelFromJson(json);

  @JsonKey(name: 'desc', defaultValue: [])
  @DescriptionConverter()
  final List<String> description;
  final int choose;
  final String type;
  final ChoiceFromField from;

  Map<String, dynamic> toJson() => _$ChoiceBaseModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ChoiceFromField {
  const ChoiceFromField({
    required this.optionSetType,
    required this.options,
  });

  factory ChoiceFromField.fromJson(Map<String, dynamic> json) =>
      _$ChoiceFromFieldFromJson(json);

  final ChoiceFromType optionSetType;
  @JsonKey(defaultValue: [])
  final List<ChoiceFromItemField> options;

  Map<String, dynamic> toJson() => _$ChoiceFromFieldToJson(this);
}

/// пока не знаю что это и зачем это, но оно есть
enum ChoiceFromType {
  @JsonValue('options_array')
  optionsArray
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ChoiceFromItemField {
  ChoiceFromItemField({
    required this.optionType,
    required this.item,
  });

  factory ChoiceFromItemField.fromJson(Map<String, dynamic> json) =>
      _$ChoiceFromItemFieldFromJson(json);

  final ChoiceFromItemType optionType;
  final ReferenceBaseModel item;

  Map<String, dynamic> toJson() => _$ChoiceFromItemFieldToJson(this);
}

/// пока не знаю что это и зачем это, но оно есть
enum ChoiceFromItemType {
  @JsonValue('reference')
  reference
}

extension ChoiceBaseToEntity on ChoiceBaseModel {
  ChoiceBaseEntity<T> toEntity<T extends DndBaseEntity>() => ChoiceBaseEntity(
        choose: choose,
        type: type,
        from: from.options.map((e) => e.item.toEntity<T>()).toList(),
      );
}

extension ChoiceBaseListToEntity on List<ChoiceBaseModel> {
  List<ChoiceBaseEntity> toEntity() => map((e) => e.toEntity()).toList();
}
