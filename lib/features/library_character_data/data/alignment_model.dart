import 'package:json_annotation/json_annotation.dart';

import '../../../app/data/models/base/description_base_model.dart';

part 'alignment_model.g.dart';

@JsonSerializable()
class AlignmentModel extends DescribedBaseModel  {
  final String abbreviation;

  const AlignmentModel({
    required this.abbreviation,
    required super.url,
    required super.index,
    required super.name,
    required super.description,
  });

  factory AlignmentModel.fromJson(Map<String, dynamic> json) =>
      _$AlignmentModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AlignmentModelToJson(this);
}
