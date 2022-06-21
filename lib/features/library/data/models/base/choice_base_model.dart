import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/base/choice_base_entity.dart';
import '../../../domain/entities/base/dnd_base_entity.dart';
import 'reference_base_model.dart';

part 'choice_base_model.g.dart';

/// базовая модель dnd5e API
/// представляет собой выбор из каких то сущностей
@JsonSerializable()
@immutable
class ChoiceBaseModel {
  const ChoiceBaseModel({
    required this.choose,
    required this.type,
    required this.from,
  });

  factory ChoiceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceBaseModelFromJson(json);

  final int choose;
  final String type;
  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> from;

  Map<String, dynamic> toJson() => _$ChoiceBaseModelToJson(this);
}

extension ChoiceBaseToEntity on ChoiceBaseModel {
  ChoiceBaseEntity<T> toEntity<T extends DndBaseEntity>() => ChoiceBaseEntity(
        choose: choose,
        type: type,
        from: from.toEntity<T>(),
      );
}

extension ChoiceBaseListToEntity on List<ChoiceBaseModel> {
  List<ChoiceBaseEntity> toEntity() => map((e) => e.toEntity()).toList();
}
