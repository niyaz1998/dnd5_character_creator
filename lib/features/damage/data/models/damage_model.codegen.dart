import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/reference_base_model.codegen.dart';

part 'damage_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DamageModel {
  final String damageDice;
  final ReferenceBaseModel damageType;

  const DamageModel({
    required this.damageDice,
    required this.damageType,
  });

  factory DamageModel.fromJson(Map<String, dynamic> json) =>
      _$DamageModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DamageModelToJson(this);
}