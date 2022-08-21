import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/domain/cubit/gin_base_cubit.dart';
import '../../../../app/domain/model/async_field.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../library/domain/entities/library_category_entity.dart';
import '../../../library/domain/repositories/library_repo.dart';
import 'spell_search_state.codegen.dart';
export 'spell_search_state.codegen.dart';

class SpellSearchCubit extends GinBaseCubit<SpellSearchState> {
  static SpellSearchCubit of(BuildContext context) =>
      BlocProvider.of<SpellSearchCubit>(context);

  SpellSearchCubit({
    required this.libraryRepo,
    required this.categoryEntity,
  }) : super(const SpellSearchState(spellLevel: 1));

  final LibraryRepo libraryRepo;
  final LibraryCategoryEntity categoryEntity;

  @override
  Future<void> init() => AsyncField.execute<List<ReferenceBaseEntity>>(
      libraryRepo.fetchSpells(categoryEntity, state.spellLevel),
      updater: (value) => emit(state.copyWith(field: value)));

  void changeSpellLevel(int spellLevel) {
    if (spellLevel > 0 && spellLevel < 10) {
      emit(state.copyWith(spellLevel: spellLevel));
      init();
    }
  }
}
