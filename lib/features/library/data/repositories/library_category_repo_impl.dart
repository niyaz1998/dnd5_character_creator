import 'package:injectable/injectable.dart';

import '../api/dnd5e_api.dart';
import '../../domain/entities/library_category_entity.dart';
import '../../domain/repositories/library_repo.dart';
import '../models/base/reference_base_model.dart';
import '../models/dnd_resource_descriptor.dart';

@LazySingleton(as: LibraryRepo)
class LibraryRepoImpl extends LibraryRepo {
  LibraryRepoImpl(this.api);

  final Dnd5eApi api;

  @override
  Future<List<LibraryCategoryEntity>> fetchCategories() async =>
      DndResourceDescriptor.resourceDescriptors.values
          .map((e) => LibraryCategoryEntity.fromRemote(e))
          .toList();

  @override
  Future<List<ReferenceBaseModel>> fetchCategoryEntities(
    LibraryCategoryEntity category,
  ) =>
      api.dndRequestList<ReferenceBaseModel>('/api/${category.path}');

  @override
  Future<T> fetchLibraryItem<T extends ReferenceBaseModel>(
    ReferenceBaseModel baseLink,
  ) =>
      api.dndRequest(baseLink.url);
}
