import '../../../../app/domain/model/gin_error.dart';
import '../../data/models/dnd_resource_descriptor.dart';

class LibraryCategoryEntity {
  LibraryCategoryEntity({
    required this.path,
    required this.localeKey,
    required this.type,
  });

  factory LibraryCategoryEntity.fromRemote(DndResourceDescriptor remote) {
    try {
      return LibraryCategoryEntity(
        localeKey: remote.localeKey,
        path: remote.path,
        type: remote.type,
      );
    } catch (e) {
      throw GinError(rawError: e);
    }
  }

  final String path;
  final String localeKey;
  final Type type;
}
