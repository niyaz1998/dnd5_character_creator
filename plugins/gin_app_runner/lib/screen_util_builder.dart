part of 'gin_app_runner.dart';

mixin ScreenUtilPreviewBuilder on MaterialAppBuilder {
  bool get enabledScreenUtilBuilder;

  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    final resultConfig = overriddenConfig ?? config;
    if (enabledScreenUtilBuilder) {
      return ScreenUtilInit(
        builder: (context, _) {
          return super.buildApp(
            overriddenConfig: resultConfig.copyWith(
              builder: DevicePreview.appBuilder,
              useInheritedMediaQuery: true,
            ),
          );
        },
        designSize: const Size(375, 812),
      );
    } else {
      return super.buildApp(overriddenConfig: resultConfig);
    }
  }
}
