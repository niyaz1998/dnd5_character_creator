library gin_app_logger;

import 'package:logger/logger.dart';

part 'src/log_types.dart';

part 'src/log_wrapper.dart';

part 'src/logger_config.dart';

void logString(LogType logType, dynamic message, String tag) {
  final log = '[$tag] $message';
  _all[logType]?.log(log);
}

void logJust(dynamic message, {String? tag}) {
  _all[LogType.debug]?.log('[${tag ?? 'DEBUG'}] $message');
}

void logException(Object? e, [StackTrace? stackTrace]) {
  try {
    final log = '[error] ${e.runtimeType.toString()}';
    _all[LogType.exceptions]?.log(log, e, stackTrace);
  } catch (e) {
    // ignore: avoid_print
    print(e);
  }
}
