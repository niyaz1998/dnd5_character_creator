import '../../library/domain/entities/base/description_base_entity.dart';
import '../../library/domain/entities/base/reference_base_entity.dart';
import 'spell_damage_entity.dart';

class SpellEntity extends DescribedBaseEntity {
  const SpellEntity({
    required super.name,
    required super.index,
    required super.description,
    required this.level,
    required this.duration,
    required this.attackType,
    required this.castingTime,
    required this.components,
    required this.concentration,
    required this.damage,
    required this.higherLevels,
    required this.material,
    required this.range,
    required this.ritual,
    required this.school,
  });

  final List<String>? higherLevels;

  /// Range of the spell, usually expressed in feet.
  final String range;
  final List<SpellComponent> components;
  final String? material;

  /// Determines if a spell can be cast in a 10-min(in-game) ritual.
  final bool ritual;
  final String duration;

  /// Determines if a spell needs concentration to persist.
  final bool concentration;
  final String castingTime;

  /// Level of the spell.
  final int level;
  final String? attackType;

  final SpellDamageEntity? damage;

  /// TODO: add link to magic school type from game mechanics section
  final ReferenceBaseEntity school;
}

enum SpellComponent {
  /// verbal - надо говорить
  V,

  /// somatic - надо махать руками
  S,

  /// material - нужен предмет
  M,
}
