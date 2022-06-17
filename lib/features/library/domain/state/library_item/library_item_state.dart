import '../../../../../app/domain/model/async_field.dart';
import '../../entities/base/dnd_base_entity.dart';

class LibraryItemState<T extends DndBaseEntity> {
  final AsyncField<T> field;

  const LibraryItemState({
    required this.field,
  });

  const LibraryItemState.initial({
    this.field = const AsyncField.nothing(),
  });

  LibraryItemState<T> copyWith({
    AsyncField<T>? field,
  }) {
    return LibraryItemState<T>(
      field: field ?? this.field,
    );
  }
}
