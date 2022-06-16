import '../../../library/domain/entities/base/description_base_entity.dart';

class LanguageModel extends DescribedBaseEntity {
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
}
