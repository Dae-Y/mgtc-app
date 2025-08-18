import 'package:flutter/foundation.dart';

/// Entry point for app initialization.
/// Use this to configure logging, environment variables, services, etc.
Future<void> bootstrap() async {
  _initLogging();
  await _initEnvironment();
  // Add other setup steps here (e.g., Firebase, Sentry, etc.)
}

/// Sets up logging based on build mode.
void _initLogging() {
  if (kDebugMode) {
    debugPrint = (String? message, {int? wrapWidth}) {
      if (message != null) {
        print('[DEBUG] $message');
      }
    };
  } else {
    // In release mode, you might disable or redirect logs
    debugPrint = (String? message, {int? wrapWidth}) {};
  }
}

/// Loads environment variables or config files.
/// You can extend this to use dotenv or other config loaders.
Future<void> _initEnvironment() async {
  // Example: Load .env file if using flutter_dotenv
  // await dotenv.load(fileName: ".env");

  // Placeholder for future config
  await Future.delayed(const Duration(milliseconds: 100));
}
