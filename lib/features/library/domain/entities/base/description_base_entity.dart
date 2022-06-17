import 'dnd_base_entity.dart';

class DescribedBaseEntity extends DndBaseEntity {
  const DescribedBaseEntity({
    required this.description,
  });

  final List<String> description;
}
