import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

import 'presentation/router/app_router_mixin.dart';
import 'presentation/theme/theme.dart';

/// Основная конфигурация нашего приложения.
class MainAppBuilder extends MaterialAppBuilder
    with AppRouterMixin, DevicePreviewBuilder {
  MainAppBuilder()
      : super(
          config: MaterialAppBuilderConfig(
            locale: const Locale('en'),
            supportedLocales: [const Locale('en')],
            localizationsDelegates: <LocalizationsDelegate>[
              DefaultCupertinoLocalizations.delegate,
            ],
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
}
