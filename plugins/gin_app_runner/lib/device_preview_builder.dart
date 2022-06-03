part of 'gin_app_runner.dart';

mixin DevicePreviewBuilder on MaterialAppBuilder {
  @override
  Widget buildApp({MaterialAppBuilderConfig? overriddenConfig}) {
    final resultConfig = overriddenConfig ?? config;
    return DevicePreview(
      availableLocales: resultConfig.supportedLocales,
      enabled: resultConfig.devicePreviewEnabled,
      builder: (context) {
        return super.buildApp(
          overriddenConfig:
              resultConfig.copyWith(builder: DevicePreview.appBuilder),
        );
      },
    );
  }
}
