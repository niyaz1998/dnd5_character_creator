import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/base/choice_base_entity.dart';

part 'choice_string_base_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ChoiceStringBaseModel {
  final int choose;
  final String type;
  @JsonKey(defaultValue: [])
  final List<String> from;

  const ChoiceStringBaseModel({
    required this.choose,
    required this.type,
    required this.from,
  });

  factory ChoiceStringBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceStringBaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChoiceStringBaseModelToJson(this);
}

extension ChoiceStringBaseToEntity on ChoiceStringBaseModel {
  ChoiceStringBaseEntity toEntity() => ChoiceStringBaseEntity(
        choose: choose,
        type: type,
        from: from,
      );
}

extension ChoiceStringBaseListToEntity on List<ChoiceStringBaseModel> {
  List<ChoiceStringBaseEntity> toEntity() => map((e) => e.toEntity()).toList();
}
