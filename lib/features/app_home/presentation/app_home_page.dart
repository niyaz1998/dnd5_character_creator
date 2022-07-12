import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../app/presentation/router/app_router.dart';
import '../../../app/utils/app_context.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;
    return Container(
      color: Colors.yellow,
      child: AutoTabsScaffold(
        routes: const [
          CharacterBuilderRoute(),
          LibraryContainerRoute(),
          SettingsRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items:  [
              BottomNavigationBarItem(
                label:locale.builder,
                icon: const Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: locale.library,
                icon: const Icon(Icons.library_books),
              ),
              BottomNavigationBarItem(
                label: locale.settings,
                icon: const Icon(Icons.settings),
              ),
            ],
          );
        },
      ),
    );
  }
}
