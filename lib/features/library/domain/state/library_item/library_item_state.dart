import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../entities/base/dnd_base_entity.dart';
import '../../entities/base/reference_base_entity.dart';

part 'library_item_state.freezed.dart';

@freezed
class LibraryItemState<T extends DndBaseEntity> with _$LibraryItemState {
  const factory LibraryItemState({
    @Default(AsyncField.nothing()) AsyncField<T> field,
  }) = _LibraryItemState;
}
