import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

import 'presentation/screens/root_screen.dart';
import 'presentation/theme/theme.dart';

/// Основная конфигурация нашего приложения.
class MainAppBuilder extends MaterialAppBuilder with DevicePreviewBuilder {
  MainAppBuilder()
      : super(
          MaterialAppBuilderConfig(
            locale: const Locale('ru'),
            themeMode: ThemeMode.light,
            title: "AppName",
            theme: lightThemeData,
            home: const RootScreen(),
            devicePreviewEnabled: false,
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('en', ''), // English, no country code
              const Locale('ru', ''), // Spanish, no country code
            ],
          ),
        );

  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    return MultiBlocProvider(
      providers: const [],
      child: super.buildApp(
        overriddenConfig: overriddenConfig,
      ),
    );
  }
}
