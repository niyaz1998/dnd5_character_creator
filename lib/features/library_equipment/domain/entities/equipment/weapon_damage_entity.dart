import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../../library_game_mechanics/domain/entities/damage_type_entity.dart';

class WeaponDamageEntity {
  const WeaponDamageEntity({
    required this.damageDice,
    required this.damageType,
  });

  final String damageDice;
  final ReferenceBaseEntity<DamageTypeEntity> damageType;
}
