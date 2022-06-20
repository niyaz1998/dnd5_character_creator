import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../entities/base/dnd_base_entity.dart';
import '../../entities/library_category_entity.dart';

part 'library_categories_state.freezed.dart';

@freezed
class LibraryCategoriesState with _$LibraryCategoriesState {
  const factory LibraryCategoriesState({
    @Default(AsyncField<List<LibraryCategoryEntity<DndBaseEntity>>>.nothing())
        AsyncField<List<LibraryCategoryEntity<DndBaseEntity>>> field,
  }) = _LibraryCategoriesState;
}
