import '../../../library/domain/entities/base/dnd_base_entity.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';
import 'equipment/equipment_base_entity.dart';

class EquipmentCategoryEntity extends DndBaseEntity {
  const EquipmentCategoryEntity({
    required super.name,
    required super.index,
    required this.equipment,
  });

  final List<ReferenceBaseEntity<EquipmentBaseEntity>> equipment;
}
