import 'package:dnd5_character_creator/app/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:gin_app_runner/gin_app_runner.dart';
import 'package:provider/provider.dart';

mixin AppRouterMixin on MaterialAppBuilder {
  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    final resultConfig = overriddenConfig ?? config;
    var appRouter = AppRouter();
    return Provider<AppRouter>.value(
      value: appRouter,
      child: super.buildApp(
        overriddenConfig: resultConfig.copyWith(
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          routeInformationProvider: appRouter.routeInfoProvider(),
        ),
      ),
    );
  }
}
