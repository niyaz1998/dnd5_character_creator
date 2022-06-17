import '../../../library/domain/entities/base/description_base_entity.dart';

class LanguageEntity extends DescribedBaseEntity {
  const LanguageEntity({
    required this.type,
    required this.script,
    required this.typicalSpeakers,
    required super.description,
  });

  /// enum Standard, Exotic
  final String type;

  /// script used for writing in the language.
  final String script;

  /// List of races that tend to speak the language.
  final List<String> typicalSpeakers;
}
