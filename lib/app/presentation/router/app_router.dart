import 'package:auto_route/auto_route.dart';
import 'package:dnd5_character_creator/features/library/presentation/library_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../features/app_home/presentation/app_home_page.dart';
import '../../../features/character_builder/presentation/character_builder_page.dart';
import '../../../features/settings/presentation/settings_page.dart';

part 'app_router.gr.dart';

@Singleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AppHomePage,
      initial: true,
      children: [
        AutoRoute(page: CharacterBuilderPage, initial: true),
        AutoRoute(page: LibraryPage),
        AutoRoute(page: SettingsPage),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
