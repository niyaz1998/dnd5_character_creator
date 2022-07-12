import '../../../library/domain/entities/base/description_base_entity.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';
import 'equipment_category_entity.dart';

class MagicItem extends DescribedBaseEntity {
  const MagicItem({
    required super.name,
    required super.index,
    required super.description,
    required this.equipmentCategory,
    required this.rarity,
    required this.variants,
    required this.variant,
  });

  final ReferenceBaseEntity<EquipmentCategoryEntity> equipmentCategory;
  final String rarity;
  final ReferenceBaseEntity variants;
  final bool variant;
}
