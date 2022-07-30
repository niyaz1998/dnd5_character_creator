// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'range_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RangeModel _$RangeModelFromJson(Map<String, dynamic> json) => RangeModel(
      normal: (json['normal'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$RangeModelToJson(RangeModel instance) =>
    <String, dynamic>{
      'normal': instance.normal,
      'long': instance.long,
    };
