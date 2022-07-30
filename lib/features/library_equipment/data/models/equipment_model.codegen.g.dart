// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) =>
    EquipmentModel(
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
      equipmentCategory: (json['equipment_category'] as List<dynamic>)
          .map((e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cost: CostModel.fromJson(json['cost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EquipmentModelToJson(EquipmentModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'equipment_category': instance.equipmentCategory,
      'cost': instance.cost,
    };
