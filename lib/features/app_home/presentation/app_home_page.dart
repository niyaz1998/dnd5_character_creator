import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../app/presentation/router/app_router.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: AutoTabsScaffold(
        routes: const [
          CharacterBuilderRoute(),
          LibraryRoute(),
          SettingsRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Builder',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Library',
                icon: Icon(Icons.library_books),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
          );
        },
      ),
    );
  }
}
