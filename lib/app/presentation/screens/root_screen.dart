import 'package:flutter/material.dart';

import '../router/app_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildRootBody(context),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: AppRouter.instance.currentTabNotifier,
        builder: (context, value, child) {
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: AppRouter.instance.openTab,
              currentIndex: value,
              items: [
                // Main
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.add),
                  icon: Icon(Icons.add),
                  label: 'Главная',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.add),
                  icon: Icon(Icons.add),
                  label: 'Купить',
                ),
              ]);
        });
  }

  Widget _buildRootBody(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: AppRouter.instance.currentTabNotifier,
        builder: (context, value, child) {
          return IndexedStack(
            index: value,
            children: [
              _buildStackItem(context, 0, Scaffold()),
              _buildStackItem(context, 1, Scaffold()),
            ],
          );
        });
  }

  Widget _buildStackItem(BuildContext context, int index, Widget child) {
    final isCurrent = AppRouter.instance.currentTab == index;
    return Offstage(
      offstage: !isCurrent,
      child: IgnorePointer(
        ignoring: !isCurrent,
        child: child,
      ),
    );
  }
}
