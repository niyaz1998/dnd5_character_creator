import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cost_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class CostModel {
  final String unit;
  final double quantity;

  const CostModel({
    required this.unit,
    required this.quantity,
  });

  factory CostModel.fromJson(Map<String, dynamic> json) =>
      _$CostModelFromJson(json);

  Map<String, dynamic> toJson() => _$CostModelToJson(this);
}