import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../entities/base/reference_base_entity.dart';

part 'library_item_state.freezed.dart';

@freezed
class LibraryItemState with _$LibraryItemState {
  const factory LibraryItemState({
    @Default(AsyncField.nothing()) AsyncField<ReferenceBaseEntity> field,
  }) = _LibraryItemState;
}
