import '../entities/base/dnd_base_entity.dart';
import '../entities/base/reference_base_entity.dart';
import '../entities/library_category_entity.dart';

abstract class LibraryRepo {
  Future<List<LibraryCategoryEntity>> fetchCategories();

  Future<List<ReferenceBaseEntity<T>>>
      fetchCategoryEntities<T extends DndBaseEntity>(
    LibraryCategoryEntity<T> category,
  );

  Future<T> fetchLibraryItem<T extends DndBaseEntity>(
    ReferenceBaseEntity<T> baseLink,
  );
}
