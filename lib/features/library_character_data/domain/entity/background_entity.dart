import '../../../library/domain/entities/base/reference_base_entity.dart';

class BackgroundModel extends ReferenceBaseEntity {
  const BackgroundModel({
    required super.url,
    required super.index,
    required super.name,
  });

  /// TODO: starting_proficiencies when proficiencies is done
  /// starting_equipment and starting_equipment_options when items are done
  /// language_options
  /// feature
  /// personality_traits
  /// ideals
  /// bonds
  /// flaws
}
