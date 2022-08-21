import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/model/async_field.dart';
import '../../../library/domain/entities/base/dnd_base_entity.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';

part 'spell_search_state.codegen.freezed.dart';

@freezed
class SpellSearchState with _$SpellSearchState {
  const factory SpellSearchState({
    @Default(AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>>.nothing())
        AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field,
    required int spellLevel,
  }) = _SpellSearchState;
}
