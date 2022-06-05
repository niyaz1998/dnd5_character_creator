import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/domain/model/async_field.dart';
import '../entities/library_category_entity.dart';
import '../repositories/library_category_repo.dart';
import 'library_categories_state.dart';
export 'library_categories_state.dart';

class LibraryCategoriesCubit extends Cubit<LibraryCategoriesState> {
  static LibraryCategoriesCubit of(BuildContext context) =>
      BlocProvider.of<LibraryCategoriesCubit>(context);

  final LibraryCategoryRepo libraryCategoryRepo;

  LibraryCategoriesCubit({
    required this.libraryCategoryRepo,
  }) : super(const LibraryCategoriesState());

  Future<void> init() => AsyncField.execute<List<LibraryCategoryEntity>>(
        libraryCategoryRepo.fetchCategories(),
        updater: (value) => emit(
          state.copyWith(
            field: value,
          ),
        ),
      );
}
