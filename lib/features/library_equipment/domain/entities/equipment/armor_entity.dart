import 'equipment_base_entity.dart';

class ArmorEntity extends EquipmentBaseEntity {
  const ArmorEntity({
    required super.description,
    required super.name,
    required super.index,
    required super.cost,
    required super.equipmentCategory,
    required this.armorCategory,
    required this.armorClass,
    required this.strengthMinimum,
    required this.stealthDisadvantage,
    required this.weight,
  });

  final String armorCategory;
  final Map<String, String> armorClass;
  final double strengthMinimum;
  final bool stealthDisadvantage;
  final double weight;
}
