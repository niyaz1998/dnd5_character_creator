// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AppHomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AppHomePage());
    },
    CharacterBuilderRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CharacterBuilderPage());
    },
    LibraryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LibraryPage());
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AppHomeRoute.name, path: '/', children: [
          RouteConfig(CharacterBuilderRoute.name,
              path: 'character-builder-page', parent: AppHomeRoute.name),
          RouteConfig(LibraryRoute.name, path: '', parent: AppHomeRoute.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: AppHomeRoute.name)
        ])
      ];
}

/// generated route for
/// [AppHomePage]
class AppHomeRoute extends PageRouteInfo<void> {
  const AppHomeRoute({List<PageRouteInfo>? children})
      : super(AppHomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'AppHomeRoute';
}

/// generated route for
/// [CharacterBuilderPage]
class CharacterBuilderRoute extends PageRouteInfo<void> {
  const CharacterBuilderRoute()
      : super(CharacterBuilderRoute.name, path: 'character-builder-page');

  static const String name = 'CharacterBuilderRoute';
}

/// generated route for
/// [LibraryPage]
class LibraryRoute extends PageRouteInfo<void> {
  const LibraryRoute() : super(LibraryRoute.name, path: '');

  static const String name = 'LibraryRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}
