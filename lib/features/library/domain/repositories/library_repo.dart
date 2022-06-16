import '../../data/models/base/reference_base_model.dart';
import '../entities/library_category_entity.dart';

abstract class LibraryRepo {
  Future<List<LibraryCategoryEntity>> fetchCategories();

  Future<List<ReferenceBaseModel>> fetchCategoryEntities(
    LibraryCategoryEntity category,
  );

  Future<T> fetchLibraryItem<T extends ReferenceBaseModel>(
    ReferenceBaseModel baseLink,
  );
}
