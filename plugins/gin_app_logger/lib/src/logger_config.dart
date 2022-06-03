part of gin_app_logger;

// ignore_for_file: unused_element
class LoggerConfig {
  const LoggerConfig._(
    this.enabledTypes, {
    this.colors = false,
    this.printEmojis = false,
  });

  factory LoggerConfig.custom(Iterable<LogType> enabledTypes) =>
      LoggerConfig._(enabledTypes);

  factory LoggerConfig.all() => const LoggerConfig._(LogType.values);

  factory LoggerConfig.nothing() => const LoggerConfig._([]);

  factory LoggerConfig.debug() =>
      const LoggerConfig._([LogType.debug, LogType.exceptions]);

  factory LoggerConfig.data() =>
      const LoggerConfig._([LogType.debug, LogType.exceptions, LogType.data]);

  factory LoggerConfig.domain() =>
      const LoggerConfig._([LogType.debug, LogType.exceptions, LogType.domain]);

  factory LoggerConfig.ui() =>
      const LoggerConfig._([LogType.debug, LogType.exceptions, LogType.ui]);

  static LoggerConfig? _instance;

  static void init(LoggerConfig config) {
    _instance ??= config;
  }

  static LoggerConfig get current =>
      _instance ??= LoggerConfig.custom([LogType.exceptions, LogType.debug]);

  final Iterable<LogType> enabledTypes;

  final bool colors;

  final bool printEmojis;
}
