// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CostModel _$CostModelFromJson(Map<String, dynamic> json) => CostModel(
      unit: json['unit'] as String,
      quantity: (json['quantity'] as num).toDouble(),
    );

Map<String, dynamic> _$CostModelToJson(CostModel instance) => <String, dynamic>{
      'unit': instance.unit,
      'quantity': instance.quantity,
    };
