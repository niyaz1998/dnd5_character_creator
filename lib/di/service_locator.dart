import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

T getIt<T extends Object>() {
  return locator.get<T>();
}
