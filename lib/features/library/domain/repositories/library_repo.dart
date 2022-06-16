import '../entities/base/reference_base_entity.dart';
import '../entities/library_category_entity.dart';

abstract class LibraryRepo {
  Future<List<LibraryCategoryEntity>> fetchCategories();

  Future<List<ReferenceBaseEntity>> fetchCategoryEntities(
    LibraryCategoryEntity category,
  );

  Future<T> fetchLibraryItem<T extends ReferenceBaseEntity>(
    ReferenceBaseEntity baseLink,
  );
}
