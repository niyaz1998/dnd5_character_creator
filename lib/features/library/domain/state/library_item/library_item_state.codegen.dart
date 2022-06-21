import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/data/models/base/reference_base_model.dart';
import '../../../../../app/domain/model/async_field.dart';

part 'library_item_state.codegen.freezed.dart';

@freezed
class LibraryItemState with _$LibraryItemState {
  const factory LibraryItemState({
    @Default(AsyncField.nothing()) AsyncField<ReferenceBaseModel> field,
  }) = _LibraryItemState;
}
