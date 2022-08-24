import 'package:json_annotation/json_annotation.dart';

import '../../../library/data/models/base/choice_base_model.codegen.dart';
import '../../../library/data/models/base/reference_base_model.codegen.dart';
import '../../domain/entities/dnd_class_entity.dart';
import 'dnd_class/equipment_amount.codegen.dart';
import 'dnd_class/spell_casting_entity.codegen.dart';

part 'dnd_class_model.codegen.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DndClassModel extends ReferenceBaseModel {
  const DndClassModel({
    required super.name,
    required super.index,
    required super.url,
    required this.proficiencies,
    required this.equipment,
    required this.equipmentChoice,
    required this.hitDie,
    required this.proficienciesChoice,
    required this.savingThrows,
    required this.spellCasting,
    required this.subclasses,
  });

  factory DndClassModel.fromJson(Map<String, dynamic> json) =>
      _$DndClassModelFromJson(json);

  final int hitDie;
  @JsonKey(name: 'spellcasting')
  final SpellCastingModel? spellCasting;

  /// TODO: place equipment here
  /// тут идет снаряга с количеством
  @JsonKey(defaultValue: [])
  final List<EquipmentAmountModel> equipment;

  /// TODO: place equipment here
  final ChoiceBaseModel? equipmentChoice;

  final ChoiceBaseModel? proficienciesChoice;

  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> proficiencies;

  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> savingThrows;

  @JsonKey(defaultValue: [])
  final List<ReferenceBaseModel> subclasses;

  @override
  Map<String, dynamic> toJson() => _$DndClassModelToJson(this);
}

extension DndClassToEntity on DndClassModel {
  DndClassEntity toEntity() => DndClassEntity(
        name: name,
        index: index,
        spellCasting: spellCasting?.toEntity(),
        proficiencies: proficiencies.toEntity(),
        equipment: equipment.map((e) => e.equipment.toEntity()).toList(),
        equipmentChoice: equipmentChoice?.toEntity(),
        hitDie: hitDie,
        proficienciesChoice: proficienciesChoice?.toEntity(),
        savingThrows: savingThrows.toEntity(),
        subclasses: subclasses.toEntity(),
      );
}

extension DndClassListToEntity on List<DndClassModel> {
  List<DndClassEntity> toEntity() => map((e) => e.toEntity()).toList();
}
