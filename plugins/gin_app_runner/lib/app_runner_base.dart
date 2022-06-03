part of 'gin_app_runner.dart';

abstract class AppRunner {
  Future<void> preloadData() async {}

  void onAppLoaded() {}

  void handleZonedException(error, stackTrace) {}

  Future<void> run(AppBuilder builder) async {
    WidgetsFlutterBinding.ensureInitialized();
    await preloadData();
    runZonedGuarded(() {
      runApp(builder.buildApp());
    }, (error, stackTrace) {
      handleZonedException(error, stackTrace);
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onAppLoaded();
    });
  }
}
