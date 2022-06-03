part of 'gin_app_runner.dart';

abstract class AppBuilder<T> {
  T get config;

  Widget buildApp({T? overriddenConfig});
}
