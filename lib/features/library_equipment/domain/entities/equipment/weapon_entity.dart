import '../../../../library/domain/entities/base/reference_base_entity.dart';
import 'equipment_base_entity.dart';
import 'weapon_damage_entity.dart';
import 'weapon_range_entity.dart';

class WeaponEntity extends EquipmentBaseEntity {
  const WeaponEntity({
    required super.description,
    required super.name,
    required super.index,
    required super.cost,
    required super.equipmentCategory,
    required this.weaponCategory,
    required this.weaponRange,
    required this.categoryRange,
    required this.range,
    required this.weaponDamage,
    required this.twoHandedDamage,
    required this.properties,
    required this.weight,
  });
  final String weaponCategory;

  /// Whether this is a Melee or Ranged weapon.
  final String weaponRange;

  /// A combination of weapon_category and weapon_range.
  final String categoryRange;
  final WeaponRangeEntity range;
  final WeaponDamageEntity weaponDamage;
  final WeaponDamageEntity twoHandedDamage;

  /// TODO: find properties entity
  final List<ReferenceBaseEntity> properties;
  final double weight;
}
