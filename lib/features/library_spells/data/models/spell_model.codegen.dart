import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.codegen.dart';
import '../../../library/data/models/base/reference_base_model.codegen.dart';
import '../../domain/entity/spell_entity.dart';
import 'spell_damage_model.codegen.dart';

part 'spell_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SpellModel extends DescribedBaseModel {
  const SpellModel({
    required super.name,
    required super.index,
    required super.description,
    required super.url,
    required this.level,
    required this.duration,
    required this.attackType,
    required this.castingTime,
    required this.components,
    required this.concentration,
    required this.damage,
    required this.higherLevels,
    required this.material,
    required this.range,
    required this.ritual,
    required this.school,
  });

  final List<String>? higherLevels;
  final String range;
  final List<SpellComponentModel> components;
  final String? material;
  final bool ritual;
  final String duration;
  final bool concentration;
  final String castingTime;
  final int level;
  final String? attackType;
  final SpellDamageModel? damage;
  final ReferenceBaseModel school;

  factory SpellModel.fromJson(Map<String, dynamic> json) =>
      _$SpellModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SpellModelToJson(this);
}

enum SpellComponentModel {
  /// verbal - надо говорить
  V,

  /// somatic - надо махать руками
  S,

  /// material - нужен предмет
  M,
}

extension SpellToEntity on SpellModel {
  SpellEntity toEntity() => SpellEntity(
        name: name,
        index: index,
        description: description,
        level: level,
        duration: duration,
        attackType: attackType,
        castingTime: castingTime,
        components: components.toEntity(),
        concentration: concentration,
        damage: damage?.toEntity(),
        higherLevels: higherLevels,
        material: material,
        range: range,
        ritual: ritual,
        school: school.toEntity(),
      );
}

extension SpellListToEntity on List<SpellModel> {
  List<SpellEntity> toEntity() => map((e) => e.toEntity()).toList();
}

extension SpellComponentToEntity on SpellComponentModel {
  SpellComponent toEntity() {
    switch (this) {
      case SpellComponentModel.V:
        return SpellComponent.V;
      case SpellComponentModel.S:
        return SpellComponent.S;
      case SpellComponentModel.M:
        return SpellComponent.M;
    }
  }
}

extension SpellComponentListToEntity on List<SpellComponentModel> {
  List<SpellComponent> toEntity() => map((e) => e.toEntity()).toList();
}
