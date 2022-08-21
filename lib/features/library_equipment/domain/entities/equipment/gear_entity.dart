import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../equipment_category_entity.dart';
import 'equipment_base_entity.dart';

class GearEntity extends EquipmentBaseEntity {
  const GearEntity({
    required super.description,
    required super.name,
    required super.index,
    required super.cost,
    required super.equipmentCategory,
    required this.gearCategory,
    required this.weight,
  });

  final ReferenceBaseEntity<EquipmentCategoryEntity> gearCategory;
  final double weight;
}
