import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/page/gin_base_page.dart';
import '../../../../app/presentation/widgets/common/async_field_builder.dart';
import '../../../../di/service_locator.dart';
import '../../domain/entities/library_category_entity.dart';
import '../../domain/state/library_categories/library_categories_cubit.dart';
import '../components/category_card.dart';

class LibraryPage extends GinBasePage {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget buildProviders(Widget child) {
    return BlocProvider<LibraryCategoriesCubit>(
      create: (context) => LibraryCategoriesCubit(
        libraryCategoryRepo: getIt(),
      )..init(),
      child: child,
    );
  }

  @override
  Widget buildPageContent(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AsyncFieldBuilder<LibraryCategoriesCubit, LibraryCategoriesState,
            List<LibraryCategoryEntity>>(
          fieldGetter: (state) => state.field,
          dataBuilder: (data) => ListView(
            padding: const EdgeInsets.all(20),
            children: data
                .map((e) => CategoryCard(libraryCategoryEntity: e))
                .toList(),
          ),
        ),
      ),
    );
  }
}
