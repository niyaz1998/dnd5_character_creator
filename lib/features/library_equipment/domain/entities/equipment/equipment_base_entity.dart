import '../../../../library/domain/entities/base/description_base_entity.dart';
import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../equipment_category_entity.dart';
import 'equipment_cost_entity.dart';

class EquipmentBaseEntity extends DescribedBaseEntity {
  const EquipmentBaseEntity({
    required super.name,
    required super.index,
    required super.description,
    required this.equipmentCategory,
    required this.cost,
  });

  final ReferenceBaseEntity<EquipmentCategoryEntity> equipmentCategory;
  final EquipmentCostEntity cost;
}
