import 'package:flutter/material.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

import '../l10n/generated/app_localizations.dart';
import 'presentation/router/app_router_mixin.dart';
import 'presentation/theme/theme.dart';

class MainAppBuilder extends MaterialAppBuilder
    with AppRouterMixin, DevicePreviewBuilder, ScreenUtilPreviewBuilder {
  MainAppBuilder()
      : super(
          config: MaterialAppBuilderConfig(
            locale: const Locale('ru'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            themeMode: ThemeMode.light,
            title: "AppName",
            theme: lightThemeData,
          ),
          useCustomRouter: true,
        );

  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    var resultConfig = overriddenConfig ?? config;
    return super.buildApp(overriddenConfig: resultConfig);
  }

  @override
  bool get enabledDevicePreviewBuilder => false;

  @override
  bool get enabledScreenUtilBuilder => true;
}
