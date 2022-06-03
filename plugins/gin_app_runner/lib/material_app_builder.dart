part of 'gin_app_runner.dart';

class MaterialAppBuilder extends AppBuilder<MaterialAppBuilderConfig> {
  @override
  final MaterialAppBuilderConfig config;

  /// switches between [MaterialApp] and [MaterialApp.router] constructor
  ///
  /// setting this to true means you must provide
  /// [MaterialAppBuilderConfig.routerDelegate] and
  /// [MaterialAppBuilderConfig.routeInformationParser] in config
  final bool useCustomRouter;

  MaterialAppBuilder({
    required this.config,
    required this.useCustomRouter,
  });

  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    final resultConfig = overriddenConfig ?? config;
    if (!useCustomRouter) {
      return MaterialApp(
        useInheritedMediaQuery: resultConfig.useInheritedMediaQuery,
        scrollBehavior: resultConfig.scrollBehavior,
        navigatorKey: resultConfig.navigatorKey,
        scaffoldMessengerKey: resultConfig.scaffoldMessengerKey,
        home: resultConfig.home,
        routes: resultConfig.routes ?? const <String, WidgetBuilder>{},
        initialRoute: resultConfig.initialRoute,
        onGenerateRoute: resultConfig.onGenerateRoute,
        onGenerateInitialRoutes: resultConfig.onGenerateInitialRoutes,
        onUnknownRoute: resultConfig.onUnknownRoute,
        navigatorObservers:
            resultConfig.navigatorObservers ?? const <NavigatorObserver>[],
        builder: resultConfig.builder,
        title: resultConfig.title ?? '',
        onGenerateTitle: resultConfig.onGenerateTitle,
        color: resultConfig.color,
        theme: resultConfig.theme,
        darkTheme: resultConfig.darkTheme,
        highContrastTheme: resultConfig.highContrastTheme,
        highContrastDarkTheme: resultConfig.highContrastDarkTheme,
        themeMode: resultConfig.themeMode,
        locale: resultConfig.locale,
        localizationsDelegates: resultConfig.localizationsDelegates,
        localeListResolutionCallback: resultConfig.localeListResolutionCallback,
        localeResolutionCallback: resultConfig.localeResolutionCallback,
        supportedLocales: resultConfig.supportedLocales,
        debugShowMaterialGrid: resultConfig.debugShowMaterialGrid,
        showPerformanceOverlay: resultConfig.showPerformanceOverlay,
        checkerboardRasterCacheImages:
            resultConfig.checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: resultConfig.checkerboardOffscreenLayers,
        showSemanticsDebugger: resultConfig.showSemanticsDebugger,
        debugShowCheckedModeBanner: resultConfig.debugShowCheckedModeBanner,
        shortcuts: resultConfig.shortcuts,
        actions: resultConfig.actions,
        restorationScopeId: resultConfig.restorationScopeId,
      );
    } else {
      return MaterialApp.router(
        useInheritedMediaQuery: resultConfig.useInheritedMediaQuery,
        scrollBehavior: resultConfig.scrollBehavior,
        scaffoldMessengerKey: resultConfig.scaffoldMessengerKey,
        builder: resultConfig.builder,
        title: resultConfig.title ?? '',
        onGenerateTitle: resultConfig.onGenerateTitle,
        color: resultConfig.color,
        theme: resultConfig.theme,
        darkTheme: resultConfig.darkTheme,
        highContrastTheme: resultConfig.highContrastTheme,
        highContrastDarkTheme: resultConfig.highContrastDarkTheme,
        themeMode: resultConfig.themeMode,
        locale: resultConfig.locale,
        localizationsDelegates: resultConfig.localizationsDelegates,
        localeListResolutionCallback: resultConfig.localeListResolutionCallback,
        localeResolutionCallback: resultConfig.localeResolutionCallback,
        supportedLocales: resultConfig.supportedLocales,
        debugShowMaterialGrid: resultConfig.debugShowMaterialGrid,
        showPerformanceOverlay: resultConfig.showPerformanceOverlay,
        checkerboardRasterCacheImages:
            resultConfig.checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: resultConfig.checkerboardOffscreenLayers,
        showSemanticsDebugger: resultConfig.showSemanticsDebugger,
        debugShowCheckedModeBanner: resultConfig.debugShowCheckedModeBanner,
        shortcuts: resultConfig.shortcuts,
        actions: resultConfig.actions,
        restorationScopeId: resultConfig.restorationScopeId,
        routerDelegate: resultConfig.routerDelegate!,
        routeInformationParser: resultConfig.routeInformationParser!,
        routeInformationProvider: resultConfig.routeInformationProvider!,
      );
    }
  }
}
