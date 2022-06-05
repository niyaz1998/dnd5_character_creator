import '../entities/library_category_entity.dart';

abstract class LibraryCategoryRepo {
  Future<List<LibraryCategoryEntity>> fetchCategories();
}
