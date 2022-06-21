import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/data/models/base/reference_base_model.codegen.dart';
import '../../../../../app/domain/cubit/gin_cubit.dart';
import '../../../../../app/domain/model/async_field.dart';

import '../../repositories/library_repo.dart';
import 'library_item_cubit.dart';
export 'library_item_state.codegen.dart';

class LibraryItemCubit extends GinCubit<LibraryItemState> {
  static LibraryItemCubit of(BuildContext context) =>
      BlocProvider.of<LibraryItemCubit>(context);

  LibraryItemCubit({
    required this.libraryRepo,
    required this.baseLink,
  }) : super(const LibraryItemState());

  final LibraryRepo libraryRepo;
  final ReferenceBaseModel baseLink;

  @override
  Future<void> init() => AsyncField.execute<ReferenceBaseModel>(
        libraryRepo.fetchLibraryItem(baseLink),
        updater: (value) => emit(
          state.copyWith(field: value),
        ),
      );
}
