import 'package:json_annotation/json_annotation.dart';
import '../../../../app/data/models/base/description_base_model.codegen.dart';
import '../../../../app/data/models/base/reference_base_model.codegen.dart';
import '../../../../app/data/models/json_parsers/description_parser.dart';
import 'cost_model.codegen.dart';

part 'equipment_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EquipmentModel extends DescribedBaseModel{
  const EquipmentModel({
    required super.url,
    required super.index,
    required super.name,
    required super.description,
    required this.equipmentCategory,
    required this.cost,
  });

  factory EquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentModelFromJson(json);

  final List<ReferenceBaseModel> equipmentCategory;
  final CostModel cost;

  @override
  Map<String, dynamic> toJson() => _$EquipmentModelToJson(this);
}