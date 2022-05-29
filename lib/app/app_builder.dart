import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

import 'presentation/router/app_router.dart';
import 'presentation/screens/root_screen.dart';
import 'presentation/theme/theme.dart';

/// Основная конфигурация нашего приложения.
class MainAppBuilder extends MaterialAppBuilder with DevicePreviewBuilder {
  MainAppBuilder()
      : super(
          MaterialAppBuilderConfig(
            locale: Locale('ru'),
            supportedLocales: [Locale('ru'), Locale('en')],
            localizationsDelegates: <LocalizationsDelegate>[
              DefaultCupertinoLocalizations.delegate,
            ],
            navigatorKey: AppRouter.instance.rootNavigatorKey,
            themeMode: ThemeMode.light,
            title: "AppName",
            theme: lightThemeData,
            home: RootScreen(),
            devicePreviewEnabled: false,
          ),
        );
}
