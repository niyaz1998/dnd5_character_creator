part of 'gin_app_runner.dart';

class MaterialAppBuilderConfig {
  final bool devicePreviewEnabled;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final RouteInformationParser<Object> routeInformationParser;
  final RouterDelegate<Object> routerDelegate;
  final BackButtonDispatcher? backButtonDispatcher;
  final TransitionBuilder? builder;
  final String? title;
  final GenerateAppTitle? onGenerateTitle;
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final ThemeData? highContrastTheme;
  final ThemeData? highContrastDarkTheme;
  final ThemeMode? themeMode;
  final Color? color;
  final Locale locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final LocaleListResolutionCallback? localeListResolutionCallback;
  final LocaleResolutionCallback? localeResolutionCallback;
  final List<Locale> supportedLocales;
  final bool showPerformanceOverlay;
  final bool checkerboardRasterCacheImages;
  final bool checkerboardOffscreenLayers;
  final bool showSemanticsDebugger;
  final bool debugShowCheckedModeBanner;
  final Map<LogicalKeySet, Intent>? shortcuts;
  final Map<Type, Action<Intent>>? actions;
  final String? restorationScopeId;
  final bool debugShowMaterialGrid;
  final ScrollBehavior? scrollBehavior;

  MaterialAppBuilderConfig({
    required this.locale,
    required this.supportedLocales,
    this.devicePreviewEnabled = false,
    this.scaffoldMessengerKey,
    this.scrollBehavior,
    required this.routeInformationParser,
    required this.routerDelegate,
    this.backButtonDispatcher,
    this.builder,
    this.title,
    this.onGenerateTitle,
    this.theme,
    this.darkTheme,
    this.highContrastTheme,
    this.highContrastDarkTheme,
    this.themeMode,
    this.color,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = false,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.debugShowMaterialGrid = false,
  });

  MaterialAppBuilderConfig copyWith({
    bool? devicePreviewEnabled,
    GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
    RouteInformationParser<Object>? routeInformationParser,
    RouterDelegate<Object>? routerDelegate,
    BackButtonDispatcher? backButtonDispatcher,
    TransitionBuilder? builder,
    String? title,
    GenerateAppTitle? onGenerateTitle,
    ThemeData? theme,
    ThemeData? darkTheme,
    ThemeData? highContrastTheme,
    ThemeData? highContrastDarkTheme,
    ThemeMode? themeMode,
    Color? color,
    Locale? locale,
    Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
    LocaleListResolutionCallback? localeListResolutionCallback,
    LocaleResolutionCallback? localeResolutionCallback,
    List<Locale>? supportedLocales,
    bool? showPerformanceOverlay,
    bool? checkerboardRasterCacheImages,
    bool? checkerboardOffscreenLayers,
    bool? showSemanticsDebugger,
    bool? debugShowCheckedModeBanner,
    Map<LogicalKeySet, Intent>? shortcuts,
    Map<Type, Action<Intent>>? actions,
    String? restorationScopeId,
    bool? debugShowMaterialGrid,
    ScrollBehavior? scrollBehavior,
  }) {
    return MaterialAppBuilderConfig(
      devicePreviewEnabled: devicePreviewEnabled ?? this.devicePreviewEnabled,
      scaffoldMessengerKey: scaffoldMessengerKey ?? this.scaffoldMessengerKey,
      routeInformationParser:
          routeInformationParser ?? this.routeInformationParser,
      routerDelegate: routerDelegate ?? this.routerDelegate,
      backButtonDispatcher: backButtonDispatcher ?? this.backButtonDispatcher,
      builder: builder ?? this.builder,
      title: title ?? this.title,
      onGenerateTitle: onGenerateTitle ?? this.onGenerateTitle,
      theme: theme ?? this.theme,
      darkTheme: darkTheme ?? this.darkTheme,
      highContrastTheme: highContrastTheme ?? this.highContrastTheme,
      highContrastDarkTheme:
          highContrastDarkTheme ?? this.highContrastDarkTheme,
      themeMode: themeMode ?? this.themeMode,
      color: color ?? this.color,
      locale: locale ?? this.locale,
      localizationsDelegates:
          localizationsDelegates ?? this.localizationsDelegates,
      localeListResolutionCallback:
          localeListResolutionCallback ?? this.localeListResolutionCallback,
      localeResolutionCallback:
          localeResolutionCallback ?? this.localeResolutionCallback,
      supportedLocales: supportedLocales ?? this.supportedLocales,
      showPerformanceOverlay:
          showPerformanceOverlay ?? this.showPerformanceOverlay,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages ?? this.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers ?? this.checkerboardOffscreenLayers,
      showSemanticsDebugger:
          showSemanticsDebugger ?? this.showSemanticsDebugger,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner ?? this.debugShowCheckedModeBanner,
      shortcuts: shortcuts ?? this.shortcuts,
      actions: actions ?? this.actions,
      restorationScopeId: restorationScopeId ?? this.restorationScopeId,
      debugShowMaterialGrid:
          debugShowMaterialGrid ?? this.debugShowMaterialGrid,
      scrollBehavior: scrollBehavior ?? this.scrollBehavior,
    );
  }
}
