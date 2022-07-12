import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../features/app_home/presentation/app_home_page.dart';
import '../../../features/character_builder/presentation/character_builder_page.dart';
import '../../../features/library/domain/entities/library_category_entity.dart';
import '../../../features/library/presentation/pages/category_page.dart';
import '../../../features/library/presentation/pages/library_container_page.dart';
import '../../../features/library/presentation/pages/library_item_page.dart';
import '../../../features/library/presentation/pages/library_page.dart';
import '../../../features/settings/presentation/settings_page.dart';
import '../../data/models/base/reference_base_model.codegen.dart';

part 'app_router.gr.dart';

@Singleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AppHomePage,
      initial: true,
      children: [
        AutoRoute(page: CharacterBuilderPage),
        AutoRoute(
          page: LibraryContainerPage,
          initial: true,
          children: [
            AutoRoute(page: LibraryPage, initial: true),
            AutoRoute(page: CategoryPage),
            AutoRoute(page: LibraryItemPage),
          ],
        ),
        AutoRoute(page: SettingsPage),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
