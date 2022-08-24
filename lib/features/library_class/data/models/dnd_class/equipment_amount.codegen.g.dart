// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_amount.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentAmountModel _$EquipmentAmountModelFromJson(
        Map<String, dynamic> json) =>
    EquipmentAmountModel(
      equipment: ReferenceBaseModel.fromJson(
          json['equipment'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$EquipmentAmountModelToJson(
        EquipmentAmountModel instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'equipment': instance.equipment,
    };
