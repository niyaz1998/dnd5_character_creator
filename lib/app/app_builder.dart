import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

import 'presentation/router/app_router_mixin.dart';
import 'presentation/theme/theme.dart';

/// Основная конфигурация нашего приложения.
class MainAppBuilder extends MaterialAppBuilder
    with AppRouterMixin, DevicePreviewBuilder {
  MainAppBuilder()
      : super(
          config: MaterialAppBuilderConfig(
            locale: const Locale('ru'),
            supportedLocales: [const Locale('ru'), const Locale('en')],
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
    var newConfig = overriddenConfig ?? config;
    return MultiBlocProvider(
      providers: const [],
      child: super.buildApp(
        overriddenConfig: newConfig,
      ),
    );
  }

  @override
  bool get enabledDevicePreviewBuilder => false;
}
