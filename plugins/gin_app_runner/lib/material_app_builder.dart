part of 'gin_app_runner.dart';

class MaterialAppBuilder extends AppBuilder<MaterialAppBuilderConfig> {
  @override
  final MaterialAppBuilderConfig config;

  MaterialAppBuilder(this.config);

  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    final resultConfig = overriddenConfig ?? config;
    return MaterialApp(
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
      checkerboardRasterCacheImages: resultConfig.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: resultConfig.checkerboardOffscreenLayers,
      showSemanticsDebugger: resultConfig.showSemanticsDebugger,
      debugShowCheckedModeBanner: resultConfig.debugShowCheckedModeBanner,
      shortcuts: resultConfig.shortcuts,
      actions: resultConfig.actions,
      restorationScopeId: resultConfig.restorationScopeId,
    );
  }
}
