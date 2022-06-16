import '../../../../app/data/models/base/reference_base_model.dart';
import '../entities/library_category_entity.dart';

abstract class LibraryCategoryRepo {
  Future<List<LibraryCategoryEntity>> fetchCategories();

  Future<List<ReferenceBaseModel>> fetchCategoryEntities(String path);
}
