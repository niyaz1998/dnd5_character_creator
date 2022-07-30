// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_armor_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentArmorModel _$EquipmentArmorModelFromJson(Map<String, dynamic> json) =>
    EquipmentArmorModel(
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
      equipmentCategory: (json['equipment_category'] as List<dynamic>)
          .map((e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cost: CostModel.fromJson(json['cost'] as Map<String, dynamic>),
      weight: (json['weight'] as num).toDouble(),
      armorCategory: json['armor_category'] as String,
      strMinimum: json['str_minimum'] as String,
      stealthDisadvantage: json['stealth_disadvantage'] as bool,
    );

Map<String, dynamic> _$EquipmentArmorModelToJson(
        EquipmentArmorModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'equipment_category': instance.equipmentCategory,
      'cost': instance.cost,
      'armor_category': instance.armorCategory,
      'str_minimum': instance.strMinimum,
      'stealth_disadvantage': instance.stealthDisadvantage,
      'weight': instance.weight,
    };
