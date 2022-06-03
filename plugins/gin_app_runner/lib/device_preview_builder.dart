part of 'gin_app_runner.dart';

mixin DevicePreviewBuilder on MaterialAppBuilder {
  bool get enabledDevicePreviewBuilder;

  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    final resultConfig = overriddenConfig ?? config;
    if (enabledDevicePreviewBuilder) {
      return DevicePreview(
        availableLocales: resultConfig.supportedLocales,
        builder: (context) {
          return super.buildApp(
            overriddenConfig:
                resultConfig.copyWith(builder: DevicePreview.appBuilder),
          );
        },
      );
    } else {
      return super.buildApp(
        overriddenConfig:
            resultConfig.copyWith(builder: DevicePreview.appBuilder),
      );
    }
  }
}
