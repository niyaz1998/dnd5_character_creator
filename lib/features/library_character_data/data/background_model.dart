import 'package:dnd5_character_creator/app/data/models/base/reference_base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'background_model.g.dart';

@JsonSerializable()
class BackgroundModel extends ReferenceBaseModel {
  /// TODO: starting_proficiencies when proficiences is done
  /// starting_equipment and starting_equipment_options when items are done
  /// language_options
  /// feature
  /// personality_traits
  /// ideals
  /// bonds
  /// flaws

  BackgroundModel({
    required super.url,
    required super.index,
    required super.name,
  });

  factory BackgroundModel.fromJson(Map<String, dynamic> json) =>
      _$BackgroundModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BackgroundModelToJson(this);
}
