import 'package:talker/talker.dart';
import 'package:talker_error_handler_core/talker_error_handler_core.dart';

extension ToLogLevel on ErrorLevel? {
  LogLevel get loglevel {
    switch (this) {
      case ErrorLevel.critical:
        return LogLevel.critical;
      case ErrorLevel.debug:
        return LogLevel.debug;
      case ErrorLevel.info:
        return LogLevel.info;
      case ErrorLevel.tiny:
        return LogLevel.verbose;
      case ErrorLevel.warning:
        return LogLevel.warning;
      case null:
        return LogLevel.debug;
    }
  }
}