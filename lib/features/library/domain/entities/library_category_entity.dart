import '../../../../app/network/errors.dart';
import '../../data/models/dnd_resource_descriptor.dart';

class LibraryCategoryEntity {
  LibraryCategoryEntity({
    required this.path,
    required this.localeKey,
  });

  final String path;
  final String localeKey;

  factory LibraryCategoryEntity.fromRemote(DndResourceDescriptor remote) {
    try {
      return LibraryCategoryEntity(
        localeKey: remote.localeKey,
        path: remote.path,
      );
    } catch (e, s) {
      throw JsonParseError(e, s);
    }
  }
}
