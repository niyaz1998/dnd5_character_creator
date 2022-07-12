import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/description_base_model.codegen.dart';
import '../../../../app/data/models/json_parsers/description_parser.dart';

part 'alignment_model.codegen.g.dart';

@JsonSerializable()
class AlignmentModel extends DescribedBaseModel {
  const AlignmentModel({
    required this.abbreviation,
    required this.abbreviation1,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  factory AlignmentModel.fromJson(Map<String, dynamic> json) =>
      _$AlignmentModelFromJson(json);

  final String abbreviation;
  final String abbreviation1;

  @override
  Map<String, dynamic> toJson() => _$AlignmentModelToJson(this);
}
