import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../../data/models/base/reference_base_model.dart';

part 'library_item_state.freezed.dart';

@freezed
class LibraryItemState with _$LibraryItemState {
  const factory LibraryItemState({
    @Default(AsyncField.nothing()) AsyncField<ReferenceBaseModel> field,
  }) = _LibraryItemState;
}
