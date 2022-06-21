import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/data/models/base/reference_base_model.dart';
import '../../../../../app/domain/model/async_field.dart';

part 'library_category_state.codegen.freezed.dart';

@freezed
class LibraryCategoryState with _$LibraryCategoryState {
  const factory LibraryCategoryState({
    @Default(AsyncField<List<ReferenceBaseModel>>.nothing())
        AsyncField<List<ReferenceBaseModel>> field,
  }) = _LibraryCategoryState;
}
