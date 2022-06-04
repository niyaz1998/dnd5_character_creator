import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'reference_base_model.dart';

part 'choice_base_model.g.dart';

/// базовая модель dnd5e API
/// представляет собой выбор из каких то сущностей
@JsonSerializable()
@immutable
class ChoiceBaseModel {
  final int choose;
  final String type;
  final List<ReferenceBaseModel> from;

  const ChoiceBaseModel({
    required this.choose,
    required this.type,
    required this.from,
  });

  factory ChoiceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceBaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChoiceBaseModelToJson(this);
}
