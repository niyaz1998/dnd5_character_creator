import 'dnd_base_entity.dart';

class DescribedBaseEntity extends DndBaseEntity {
  const DescribedBaseEntity({
    required this.description,
    required super.index,
    required super.name,
  });

  final List<String> description;
}
