import 'package:injectable/injectable.dart';

import '../../../../app/data/models/base/reference_base_model.dart';
import '../../../../app/network/dnd5e_api.dart';
import '../../domain/entities/library_category_entity.dart';
import '../../domain/repositories/library_category_repo.dart';
import '../models/dnd_resource_descriptor.dart';

@LazySingleton(as: LibraryCategoryRepo)
class LibraryCategoryRepoImpl extends LibraryCategoryRepo {
  LibraryCategoryRepoImpl(this.api);

  final Dnd5eApi api;

  @override
  Future<List<LibraryCategoryEntity>> fetchCategories() async =>
      DndResourceDescriptor.resourceDescriptors.values
          .map((e) => LibraryCategoryEntity.fromRemote(e))
          .toList();

  @override
  Future<List<ReferenceBaseModel>> fetchCategoryEntities(String path) =>
      api.dndRequestList<ReferenceBaseModel>('/api/$path');
}
