part of 'gin_app_runner.dart';

class MaterialAppBuilder extends AppBuilder<MaterialAppBuilderConfig> {
  @override
  final MaterialAppBuilderConfig config;

  MaterialAppBuilder(this.config);

  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    final resultConfig = overriddenConfig ?? config;
    return MaterialApp.router(
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
      checkerboardRasterCacheImages: resultConfig.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: resultConfig.checkerboardOffscreenLayers,
      showSemanticsDebugger: resultConfig.showSemanticsDebugger,
      debugShowCheckedModeBanner: resultConfig.debugShowCheckedModeBanner,
      shortcuts: resultConfig.shortcuts,
      actions: resultConfig.actions,
      restorationScopeId: resultConfig.restorationScopeId,
      routerDelegate: resultConfig.routerDelegate,
      routeInformationParser: resultConfig.routeInformationParser,
    );
  }
}
