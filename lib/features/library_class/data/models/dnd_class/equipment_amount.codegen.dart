import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../library/data/models/base/reference_base_model.codegen.dart';

part 'equipment_amount.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EquipmentAmountModel {
  const EquipmentAmountModel({
    required this.equipment,
    required this.quantity,
  });

  factory EquipmentAmountModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentAmountModelFromJson(json);

  final int quantity;
  final ReferenceBaseModel equipment;

  Map<String, dynamic> toJson() => _$EquipmentAmountModelToJson(this);
}
