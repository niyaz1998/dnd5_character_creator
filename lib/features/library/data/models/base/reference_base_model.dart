import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/base/reference_base_entity.dart';

part 'reference_base_model.g.dart';

/// базовая сущность всего dnd 5e API
@JsonSerializable()
@immutable
class ReferenceBaseModel {
  const ReferenceBaseModel({
    required this.index,
    required this.name,
    required this.url,
  });

  factory ReferenceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ReferenceBaseModelFromJson(json);

  /// идентификатор в dnd5eAPI
  final String index;

  /// название, для пользователя
  final String name;

  /// адрес куда можно обратиться за детальной информацией
  final String url;

  Map<String, dynamic> toJson() => _$ReferenceBaseModelToJson(this);
}

extension ReferenceBaseToEntity on ReferenceBaseModel {
  ReferenceBaseEntity toEntity() => ReferenceBaseEntity(
        index: index,
        name: name,
        url: url,
      );
}

extension ReferenceBaseListToEntity on List<ReferenceBaseModel> {
  List<ReferenceBaseEntity> toEntity() => map((e) => e.toEntity()).toList();
}
