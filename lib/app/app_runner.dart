import 'package:gin_app_logger/gin_app_logger.dart';
import 'package:gin_app_runner/gin_app_runner.dart';

import '../di/injectable.dart';

class MainAppRunner extends AppRunner {
  MainAppRunner(this.env);

  final String env;

  @override
  Future<void> preloadData() async {
    super.preloadData();
    configureDependencies(env);
  }

  @override
  void handleZonedException(error, stackTrace) {
    logException(error, stackTrace);
  }
}
