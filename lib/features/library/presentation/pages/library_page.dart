import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/page/gin_base_page.dart';
import '../../../../di/service_locator.dart';
import '../../domain/state/library_categories_cubit.dart';
import '../components/category_card.dart';

class LibraryPage extends GinBasePage {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget buildProviders(Widget child) {
    return BlocProvider<LibraryCategoriesCubit>(
      create: (context) => LibraryCategoriesCubit(libraryCategoryRepo: getIt()),
      child: child,
    );
  }

  @override
  Widget buildPageContent(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LibraryCategoriesCubit, LibraryCategoriesState>(
        builder: (context, state) {
          return state.field.whenCommon(
            onRefreshPressed: LibraryCategoriesCubit.of(context).init,
            onData: (data) => ListView(
              children: data
                  .map((e) => CategoryCard(libraryCategoryEntity: e))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
