import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/model/async_field.dart';
import '../../entities/library_category_entity.dart';

part 'library_categories_state.codegen.freezed.dart';

@freezed
class LibraryCategoriesState with _$LibraryCategoriesState {
  const factory LibraryCategoriesState({
    @Default(AsyncField<List<LibraryCategoryEntity>>.nothing())
        AsyncField<List<LibraryCategoryEntity>> field,
  }) = _LibraryCategoriesState;
}
