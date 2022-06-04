import 'package:flutter/material.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

import '../../../di/service_locator.dart';
import 'app_router.dart';

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
