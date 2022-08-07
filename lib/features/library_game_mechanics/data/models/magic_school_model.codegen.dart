import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/description_base_model.codegen.dart';
import '../../domain/entities/magic_school_entity.dart';

part 'magic_school_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class MagicSchoolModel extends DescribedBaseModel {
  const MagicSchoolModel({
    required super.index,
    required super.url,
    required super.description,
    required super.name,
  });

  factory MagicSchoolModel.fromJson(Map<String, dynamic> json) =>
      _$MagicSchoolModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MagicSchoolModelToJson(this);
}

extension MagicSchoolToEntity on MagicSchoolModel {
  MagicSchoolEntity toEntity() => MagicSchoolEntity(
        description: description,
        index: index,
        name: name,
      );
}

extension MagicSchoolListToEntity on List<MagicSchoolModel> {
  List<MagicSchoolEntity> toEntity() => map((e) => e.toEntity()).toList();
}
