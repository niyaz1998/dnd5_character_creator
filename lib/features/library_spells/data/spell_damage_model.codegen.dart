import 'package:json_annotation/json_annotation.dart';

import '../../library/data/models/base/reference_base_model.codegen.dart';
import '../domain/spell_damage_entity.dart';

part 'spell_damage_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SpellDamageModel {
  const SpellDamageModel({
    required this.damageAtLevels,
    required this.damageType,
  });

  final Map? damageAtLevels;

  /// TODO: add type when game mechanics are ready
  final ReferenceBaseModel damageType;

  factory SpellDamageModel.fromJson(Map<String, dynamic> json) =>
      _$SpellDamageModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpellDamageModelToJson(this);
}

extension SpellDamageToEntity on SpellDamageModel {
  SpellDamageEntity toEntity() => SpellDamageEntity(
        damageType: damageType.toEntity(),
        damageAtLevels: damageAtLevels,
      );
}

extension SpellDamageListToEntity on List<SpellDamageModel> {
  List<SpellDamageEntity> toEntity() => map((e) => e.toEntity()).toList();
}
