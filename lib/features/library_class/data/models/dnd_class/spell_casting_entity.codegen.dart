import 'package:json_annotation/json_annotation.dart';

import '../../../../library/data/models/json_parsers/description_parser.dart';
import '../../../domain/entities/dnd_class/spell_casting_entity.dart';

part 'spell_casting_entity.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SpellCastingModel {
  const SpellCastingModel({
    required this.level,
    required this.info,
  });

  factory SpellCastingModel.fromJson(Map<String, dynamic> json) =>
      _$SpellCastingModelFromJson(json);

  /// Level at which the class can start using its spell casting abilities.
  final int level;
  final List<SpellCastingInfoModel> info;

  Map<String, dynamic> toJson() => _$SpellCastingModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SpellCastingInfoModel {
  const SpellCastingInfoModel({
    required this.name,
    required this.description,
  });

  factory SpellCastingInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SpellCastingInfoModelFromJson(json);

  final String name;

  @JsonKey(name: 'desc', defaultValue: [])
  @DescriptionConverter()
  final List<String> description;

  Map<String, dynamic> toJson() => _$SpellCastingInfoModelToJson(this);
}

extension SpellCastingToEntity on SpellCastingModel {
  SpellCastingEntity toEntity() => SpellCastingEntity(
        level: level,
        info: info.toEntity(),
      );
}

extension SpellCastingListToEntity on List<SpellCastingModel> {
  List<SpellCastingEntity> toEntity() => map((e) => e.toEntity()).toList();
}

extension SpellCastingInfoToEntity on SpellCastingInfoModel {
  SpellCastingInfoEntity toEntity() => SpellCastingInfoEntity(
        name: name,
        description: description,
      );
}

extension SpellCastingInfoListToEntity on List<SpellCastingInfoModel> {
  List<SpellCastingInfoEntity> toEntity() => map((e) => e.toEntity()).toList();
}
