import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

import 'presentation/screens/root_screen.dart';
import 'presentation/theme/theme.dart';

/// Основная конфигурация нашего приложения.
class MainAppBuilder extends MaterialAppBuilder with DevicePreviewBuilder {
  MainAppBuilder()
      : super(
          MaterialAppBuilderConfig(
            locale: const Locale('ru'),
            supportedLocales: [const Locale('ru'), const Locale('en')],
            localizationsDelegates: <LocalizationsDelegate>[
              DefaultCupertinoLocalizations.delegate,
            ],
            themeMode: ThemeMode.light,
            title: "AppName",
            theme: lightThemeData,
            home: const RootScreen(),
            devicePreviewEnabled: false,
          ),
        );
}
