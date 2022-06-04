import 'package:json_annotation/json_annotation.dart';

part 'reference_base_model.g.dart';

/// базовая сущность всего dnd 5e API
@JsonSerializable()
class ReferenceBaseModel {
  /// идентификатор в dnd5eAPI
  final String index;

  /// название, для пользователя
  final String name;

  /// адрес куда можно обратиться за детальной информацией
  final String url;

  ReferenceBaseModel({
    required this.index,
    required this.name,
    required this.url,
  });

  factory ReferenceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ReferenceBaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReferenceBaseModelToJson(this);
}
