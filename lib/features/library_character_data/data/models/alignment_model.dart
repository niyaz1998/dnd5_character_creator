import 'package:json_annotation/json_annotation.dart';

import '../../../../app/data/models/base/description_base_model.dart';
import '../../../../app/data/models/json_parsers/description_parser.dart';

part 'alignment_model.g.dart';

@JsonSerializable()
class AlignmentModel extends DescribedBaseModel {
  const AlignmentModel({
    required this.abbreviation,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  factory AlignmentModel.fromJson(Map<String, dynamic> json) =>
      _$AlignmentModelFromJson(json);

  final String abbreviation;

  @override
  Map<String, dynamic> toJson() => _$AlignmentModelToJson(this);
}
