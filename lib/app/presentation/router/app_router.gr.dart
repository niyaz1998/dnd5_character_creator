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
    LibraryContainerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LibraryContainerPage());
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingsPage());
    },
    LibraryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LibraryPage());
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: CategoryPage(
              key: args.key,
              libraryCategoryEntity: args.libraryCategoryEntity));
    },
    LibraryItemRoute.name: (routeData) {
      final args = routeData.argsAs<LibraryItemRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: LibraryItemPage(
              key: args.key,
              referenceBase: args.referenceBase,
              libraryCategoryEntity: args.libraryCategoryEntity));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AppHomeRoute.name, path: '/', children: [
          RouteConfig(CharacterBuilderRoute.name,
              path: 'character-builder-page', parent: AppHomeRoute.name),
          RouteConfig(LibraryContainerRoute.name,
              path: '',
              parent: AppHomeRoute.name,
              children: [
                RouteConfig(LibraryRoute.name,
                    path: '', parent: LibraryContainerRoute.name),
                RouteConfig(CategoryRoute.name,
                    path: 'category-page', parent: LibraryContainerRoute.name),
                RouteConfig(LibraryItemRoute.name,
                    path: 'library-item-page',
                    parent: LibraryContainerRoute.name)
              ]),
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
/// [LibraryContainerPage]
class LibraryContainerRoute extends PageRouteInfo<void> {
  const LibraryContainerRoute({List<PageRouteInfo>? children})
      : super(LibraryContainerRoute.name, path: '', initialChildren: children);

  static const String name = 'LibraryContainerRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [LibraryPage]
class LibraryRoute extends PageRouteInfo<void> {
  const LibraryRoute() : super(LibraryRoute.name, path: '');

  static const String name = 'LibraryRoute';
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute(
      {Key? key, required LibraryCategoryEntity libraryCategoryEntity})
      : super(CategoryRoute.name,
            path: 'category-page',
            args: CategoryRouteArgs(
                key: key, libraryCategoryEntity: libraryCategoryEntity));

  static const String name = 'CategoryRoute';
}

class CategoryRouteArgs {
  const CategoryRouteArgs({this.key, required this.libraryCategoryEntity});

  final Key? key;

  final LibraryCategoryEntity libraryCategoryEntity;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, libraryCategoryEntity: $libraryCategoryEntity}';
  }
}

/// generated route for
/// [LibraryItemPage]
class LibraryItemRoute extends PageRouteInfo<LibraryItemRouteArgs> {
  LibraryItemRoute(
      {Key? key,
      required ReferenceBaseModel referenceBase,
      required LibraryCategoryEntity libraryCategoryEntity})
      : super(LibraryItemRoute.name,
            path: 'library-item-page',
            args: LibraryItemRouteArgs(
                key: key,
                referenceBase: referenceBase,
                libraryCategoryEntity: libraryCategoryEntity));

  static const String name = 'LibraryItemRoute';
}

class LibraryItemRouteArgs {
  const LibraryItemRouteArgs(
      {this.key,
      required this.referenceBase,
      required this.libraryCategoryEntity});

  final Key? key;

  final ReferenceBaseModel referenceBase;

  final LibraryCategoryEntity libraryCategoryEntity;

  @override
  String toString() {
    return 'LibraryItemRouteArgs{key: $key, referenceBase: $referenceBase, libraryCategoryEntity: $libraryCategoryEntity}';
  }
}
