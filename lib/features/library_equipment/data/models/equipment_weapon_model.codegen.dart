import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/reference_base_model.codegen.dart';
import '../../../../app/data/models/json_parsers/description_parser.dart';
import '../../../damage/data/models/damage_model.codegen.dart';
import 'cost_model.codegen.dart';
import 'equipment_model.codegen.dart';
import 'range_model.codegen.dart';

part 'equipment_weapon_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EquipmentWeaponModel extends EquipmentModel {
  const EquipmentWeaponModel({
    required super.url,
    required super.index,
    required super.name,
    required super.description,
    required super.equipmentCategory,
    required super.cost,
    required this.weaponCategory,
    required this.weaponRange,
    required this.categoryRange,
    required this.weight,
    required this.range,
    required this.damage,
    required this.twoHandedDamage,
    required this.properties,
  });

  factory EquipmentWeaponModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentWeaponModelFromJson(json);

  final String weaponCategory;
  final String weaponRange;
  final String categoryRange;
  final double weight;
  final RangeModel range;
  final DamageModel damage;
  final DamageModel twoHandedDamage;
  final List<ReferenceBaseModel> properties;

  @override
  Map<String, dynamic> toJson() => _$EquipmentWeaponModelToJson(this);
}
