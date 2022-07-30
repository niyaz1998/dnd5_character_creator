import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/reference_base_model.codegen.dart';
import '../../../../app/data/models/json_parsers/description_parser.dart';
import 'cost_model.codegen.dart';
import 'equipment_model.codegen.dart';

part 'equipment_armor_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EquipmentArmorModel extends EquipmentModel {
  const EquipmentArmorModel({
    required super.url,
    required super.index,
    required super.name,
    required super.description,
    required super.equipmentCategory,
    required super.cost,
    required this.weight,
    required this.armorCategory,
    required this.strMinimum,
    required this.stealthDisadvantage,
  });

  factory EquipmentArmorModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentArmorModelFromJson(json);

  final String armorCategory;
  final String strMinimum;
  final bool stealthDisadvantage;
  final double weight;

  @override
  Map<String, dynamic> toJson() => _$EquipmentArmorModelToJson(this);
}
