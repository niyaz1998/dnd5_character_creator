import 'package:injectable/injectable.dart';

import '../../domain/entities/library_category_entity.dart';
import '../../domain/repositories/library_category_repo.dart';
import '../models/dnd_resource_descriptor.dart';

@LazySingleton(as: LibraryCategoryRepo)
class LibraryCategoryRepoImpl extends LibraryCategoryRepo {
  @override
  Future<List<LibraryCategoryEntity>> fetchCategories() async =>
      DndResourceDescriptor.resourceDescriptors.values
          .map((e) => LibraryCategoryEntity.fromRemote(e))
          .toList();
}
