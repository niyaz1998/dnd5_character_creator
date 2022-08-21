import '../../../library/domain/entities/base/reference_base_entity.dart';

class SpellDamageEntity {
  SpellDamageEntity({
    required this.damageAtLevels,
    required this.damageType,
  });

  final Map? damageAtLevels;

  /// TODO: add type when game mechanics are ready
  final ReferenceBaseEntity damageType;
}
