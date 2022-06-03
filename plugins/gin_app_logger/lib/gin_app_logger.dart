import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(
    methodCount: 2,
    errorMethodCount: 8,
    lineLength: 80,
    colors: true,
    printEmojis: true,
    printTime: false,
  ),
);

void logException(dynamic e, dynamic s) {
  logger.log(Level.error, e, s);
}

void logJust(dynamic message) {
  logger.log(Level.info, message);
}