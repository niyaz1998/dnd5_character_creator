import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../entities/base/dnd_base_entity.dart';

part 'library_item_state.codegen.freezed.dart';

@freezed
class LibraryItemState with _$LibraryItemState {
  const factory LibraryItemState({
    @Default(AsyncField<DndBaseEntity>.nothing()) AsyncField<DndBaseEntity> field,
  }) = _LibraryItemState;
}
