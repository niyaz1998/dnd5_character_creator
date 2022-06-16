import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../../data/models/base/reference_base_model.dart';

part 'library_category_state.freezed.dart';

@freezed
class LibraryCategoryState with _$LibraryCategoryState {
  const factory LibraryCategoryState({
    @Default(AsyncField<List<ReferenceBaseModel>>.nothing())
        AsyncField<List<ReferenceBaseModel>> field,
  }) = _LibraryCategoryState;
}
