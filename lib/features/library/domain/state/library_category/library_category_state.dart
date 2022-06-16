import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../entities/base/reference_base_entity.dart';

part 'library_category_state.freezed.dart';

@freezed
class LibraryCategoryState with _$LibraryCategoryState {
  const factory LibraryCategoryState({
    @Default(AsyncField<List<ReferenceBaseEntity>>.nothing())
        AsyncField<List<ReferenceBaseEntity>> field,
  }) = _LibraryCategoryState;
}
