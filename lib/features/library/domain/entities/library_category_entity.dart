import 'base/dnd_base_entity.dart';

class LibraryCategoryEntity<T extends DndBaseEntity> {
  const LibraryCategoryEntity({
    required this.path,
    required this.localeKey,
  });

  final String path;
  final String localeKey;
}
