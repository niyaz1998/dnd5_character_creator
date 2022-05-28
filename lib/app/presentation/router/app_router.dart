import 'package:flutter/material.dart';

/// Мне не особо нравится это решения для роутера, оставим пока,
/// но я буду думать что сделать по лучше
class AppRouter {
  AppRouter._();

  static final AppRouter _instance = AppRouter._();
  static AppRouter get instance => _instance;

  final rootNavigatorKey = GlobalKey<NavigatorState>();

  final currentTabNotifier = ValueNotifier<int>(0);

  int get currentTab => currentTabNotifier.value;

  void openTab(int index) {
    currentTabNotifier.value = index;
  }
}

extension AppRouterExtension on AppRouter {
  Future<T?> push<T extends Object?>(BuildContext context, Widget screen,
      {RouteSettings? settings}) {
    return Navigator.of(context).push(_buildRoute<T>(screen, settings));
  }

  Future<T?> pushModalScreen<T extends Object?>(
      BuildContext context, Widget screen,
      {RouteSettings? settings}) {
    return Navigator.of(context)
        .push<T>(_buildRoute<T>(screen, settings, true));
  }

  Future<T?> replace<T extends Object?>(BuildContext context, Widget screen,
      {RouteSettings? settings}) {
    return Navigator.of(context)
        .pushReplacement(_buildRoute<T>(screen, settings));
  }

  Future<T?> pushAndPopToRoot<T extends Object?>(
      BuildContext context, Widget screen,
      {RouteSettings? settings}) {
    return Navigator.pushAndRemoveUntil(
        context, _buildRoute<T>(screen, settings), (route) => route.isFirst);
  }

  void popToRoot(BuildContext context, [result]) {
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  Route<T> _buildRoute<T extends Object?>(
    Widget screen, [
    RouteSettings? settings,
    bool fullscreenDialog = false,
  ]) {
    return MaterialPageRoute<T>(
        fullscreenDialog: fullscreenDialog,
        settings: settings ?? RouteSettings(name: '${screen.runtimeType}'),
        builder: (_) => screen);
  }
}
