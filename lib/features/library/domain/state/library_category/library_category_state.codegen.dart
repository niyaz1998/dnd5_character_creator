import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../entities/base/dnd_base_entity.dart';
import '../../entities/base/reference_base_entity.dart';

part 'library_category_state.codegen.freezed.dart';

@freezed
class LibraryCategoryState with _$LibraryCategoryState {
  const factory LibraryCategoryState({
    @Default(AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>>.nothing())
        AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field,
  }) = _LibraryCategoryState;
}
