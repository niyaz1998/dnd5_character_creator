import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/util/enum_util.dart';
import '../../../library/data/models/base/description_base_model.dart';
import '../../../library/data/models/json_parsers/description_parser.dart';
import '../../domain/entity/language_entity.dart';

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

extension LanguageToEntity on LanguageModel {
  LanguageEntity toEntity() => LanguageEntity(
        type: enumFromString(LanguageType.values, type)!,
        script: script,
        typicalSpeakers: typicalSpeakers,
        index: index,
        name: name,
        description: description,
      );
}

extension LanguageListToEntity on List<LanguageModel> {
  List<LanguageEntity> toEntity() => map((e) => e.toEntity()).toList();
}
