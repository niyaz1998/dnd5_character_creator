import '../../../../library/domain/entities/base/reference_base_entity.dart';
import '../equipment_category_entity.dart';
import 'equipment_base_entity.dart';

class EquipmentPackEntity extends EquipmentBaseEntity {
  const EquipmentPackEntity({
    required super.description,
    required super.name,
    required super.index,
    required super.cost,
    required super.equipmentCategory,
    required this.contents,
    required this.gearCategory,
  });

  final ReferenceBaseEntity<EquipmentCategoryEntity> gearCategory;
  final List<ReferenceBaseEntity<EquipmentBaseEntity>> contents;
}
