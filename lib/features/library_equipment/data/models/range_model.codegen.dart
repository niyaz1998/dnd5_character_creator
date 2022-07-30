import 'package:json_annotation/json_annotation.dart';

part 'range_model.codegen.g.dart';


/// Создал тут возможно модель будет использовать в других местах
/// в таком случае перенсем ее в более абстарктную
@JsonSerializable(fieldRename: FieldRename.snake)
class RangeModel {
  final double normal;
  final double long;

  const RangeModel({
    required this.normal,
    required this.long,
  });

  factory RangeModel.fromJson(Map<String, dynamic> json) =>
      _$RangeModelFromJson(json);

  Map<String, dynamic> toJson() => _$RangeModelToJson(this);
}
