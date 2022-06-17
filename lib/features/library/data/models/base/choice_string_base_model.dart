import 'package:json_annotation/json_annotation.dart';

part 'choice_string_base_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ChoiceStringBaseModel {
  final int choose;
  final String type;
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
