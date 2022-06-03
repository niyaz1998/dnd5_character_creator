import 'package:injectable/injectable.dart';

import 'app/app_builder.dart';
import 'app/app_runner.dart';

void main() {
  final runner = MainAppRunner(Environment.prod);
  final builder = MainAppBuilder();
  runner.run(builder);
}
