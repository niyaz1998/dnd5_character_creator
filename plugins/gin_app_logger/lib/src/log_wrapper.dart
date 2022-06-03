part of gin_app_logger;

class LogWrapper {
  LogWrapper(this.type, this.logger, this.level);

  final LogType type;
  final Logger logger;
  final Level level;

  void log(dynamic message, [error, StackTrace? stackTrace]) {
    logger.log(level, message?.toString(), error, stackTrace);
  }
}

final _all = {
  LogType.exceptions: _exceptions,
  LogType.domain: _domain,
  LogType.ui: _ui,
  LogType.debug: _debug,
  LogType.data: _data
};

final _debug = LogWrapper(
    LogType.debug,
    Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        colors: LoggerConfig.current.colors,
        printEmojis: LoggerConfig.current.printEmojis,
      ),
      filter: _LoggerFilter(LogType.debug),
    ),
    Level.debug);

final _ui = LogWrapper(
    LogType.ui,
    Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          colors: LoggerConfig.current.colors,
          printEmojis: LoggerConfig.current.printEmojis,
        ),
        filter: _LoggerFilter(LogType.ui)),
    Level.info);

final _data = LogWrapper(
    LogType.data,
    Logger(
      level: Level.info,
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 0,
        colors: LoggerConfig.current.colors,
        printEmojis: LoggerConfig.current.printEmojis,
      ),
      filter: _LoggerFilter(LogType.data),
    ),
    Level.info);

final _domain = LogWrapper(
    LogType.domain,
    Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        colors: LoggerConfig.current.colors,
        printEmojis: LoggerConfig.current.printEmojis,
      ),
      filter: _LoggerFilter(LogType.domain),
    ),
    Level.info);

final _exceptions = LogWrapper(
    LogType.exceptions,
    Logger(
      printer: PrettyPrinter(
        methodCount: 6,
        errorMethodCount: 12,
        printTime: false,
        colors: LoggerConfig.current.colors,
        printEmojis: LoggerConfig.current.printEmojis,
      ),
      filter: _LoggerFilter(LogType.exceptions),
    ),
    Level.error);

class _LoggerFilter extends LogFilter {
  _LoggerFilter(this.logType);

  final LogType logType;

  @override
  bool shouldLog(LogEvent event) {
    return LoggerConfig.current.enabledTypes.contains(logType);
  }
}
