import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/data/models/base/reference_base_model.codegen.dart';
import '../../../../../app/domain/cubit/gin_cubit.dart';
import '../../../../../app/domain/model/async_field.dart';
import '../../entities/library_category_entity.dart';
import '../../repositories/library_repo.dart';
import 'library_category_state.codegen.dart';

export 'library_category_state.codegen.dart';

class LibraryCategoryCubit extends GinCubit<LibraryCategoryState> {
  static LibraryCategoryCubit of(BuildContext context) =>
      BlocProvider.of<LibraryCategoryCubit>(context);

  LibraryCategoryCubit({
    required this.libraryCategoryRepo,
    required this.libraryCategoryEntity,
  }) : super(const LibraryCategoryState());

  final LibraryRepo libraryCategoryRepo;
  final LibraryCategoryEntity libraryCategoryEntity;

  @override
  Future<void> init() =>
      AsyncField.execute<List<ReferenceBaseModel>>(
        libraryCategoryRepo.fetchCategoryEntities(libraryCategoryEntity),
        updater: (value) => emit(state.copyWith(field: value)),
      );
}
