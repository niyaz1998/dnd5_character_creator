// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_weapon_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentWeaponModel _$EquipmentWeaponModelFromJson(
        Map<String, dynamic> json) =>
    EquipmentWeaponModel(
      url: json['url'] as String,
      index: json['index'] as String,
      name: json['name'] as String,
      description:
          const DescriptionConverter().fromJson(json['desc'] as Object),
      equipmentCategory: (json['equipment_category'] as List<dynamic>)
          .map((e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cost: CostModel.fromJson(json['cost'] as Map<String, dynamic>),
      weaponCategory: json['weapon_category'] as String,
      weaponRange: json['weapon_range'] as String,
      categoryRange: json['category_range'] as String,
      weight: (json['weight'] as num).toDouble(),
      range: RangeModel.fromJson(json['range'] as Map<String, dynamic>),
      damage: DamageModel.fromJson(json['damage'] as Map<String, dynamic>),
      twoHandedDamage: DamageModel.fromJson(
          json['two_handed_damage'] as Map<String, dynamic>),
      properties: (json['properties'] as List<dynamic>)
          .map((e) => ReferenceBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EquipmentWeaponModelToJson(
        EquipmentWeaponModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': const DescriptionConverter().toJson(instance.description),
      'equipment_category': instance.equipmentCategory,
      'cost': instance.cost,
      'weapon_category': instance.weaponCategory,
      'weapon_range': instance.weaponRange,
      'category_range': instance.categoryRange,
      'weight': instance.weight,
      'range': instance.range,
      'damage': instance.damage,
      'two_handed_damage': instance.twoHandedDamage,
      'properties': instance.properties,
    };
