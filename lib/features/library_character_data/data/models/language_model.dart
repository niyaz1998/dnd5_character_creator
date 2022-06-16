import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/description_base_model.dart';

part 'language_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LanguageModel extends DescribedBaseModel {
  const LanguageModel({
    required this.type,
    required this.script,
    required this.typicalSpeakers,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  /// enum Standard, Exotic
  final String type;

  /// script used for writing in the language.
  final String script;

  /// List of races that tend to speak the language.
  final List<String> typicalSpeakers;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}
