// ignore_for_file: prefer_relative_imports

import 'package:dnd5_character_creator/app/presentation/router/app_router.dart';
import 'package:dnd5_character_creator/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

mixin AppRouterMixin on MaterialAppBuilder {
  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    final resultConfig = overriddenConfig ?? config;
    var appRouter = getIt<AppRouter>();
    return super.buildApp(
      overriddenConfig: resultConfig.copyWith(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        routeInformationProvider: appRouter.routeInfoProvider(),
      ),
    );
  }
}
