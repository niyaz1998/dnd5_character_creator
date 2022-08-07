import '../../../library/domain/entities/base/description_base_entity.dart';

class LanguageEntity extends DescribedBaseEntity {
  const LanguageEntity({
    required this.type,
    required this.script,
    required this.typicalSpeakers,
    required super.index,
    required super.name,
    required super.description,
  });

  /// enum Standard, Exotic
  final LanguageType type;

  /// script used for writing in the language.
  final String script;

  /// List of races that tend to speak the language.
  final List<String> typicalSpeakers;
}

// ignore: constant_identifier_names
enum LanguageType { Standard, Exotic }
