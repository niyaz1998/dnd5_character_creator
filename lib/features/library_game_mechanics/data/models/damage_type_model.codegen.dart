import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.codegen.dart';
import '../../../library/data/models/json_parsers/description_parser.dart';
import '../../domain/entities/damage_type_entity.dart';

part 'damage_type_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class DamageTypeModel extends DescribedBaseModel {
  const DamageTypeModel({
    required super.index,
    required super.url,
    required super.description,
    required super.name,
  });

  factory DamageTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DamageTypeModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DamageTypeModelToJson(this);
}

extension DamageTypeToEntity on DamageTypeModel {
  DamageTypeEntity toEntity() => DamageTypeEntity(
        description: description,
        index: index,
        name: name,
      );
}

extension DamageTypeListToEntity on List<DamageTypeModel> {
  List<DamageTypeEntity> toEntity() => map((e) => e.toEntity()).toList();
}
