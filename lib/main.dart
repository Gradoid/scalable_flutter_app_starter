import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'package:scalable_flutter_app_starter/core/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initLoggy();

  runApp(const ScalableFlutterApp());
}

void _initLoggy() {
  Loggy.initLoggy(
    logOptions: const LogOptions(
      LogLevel.all,
      stackTraceLevel: LogLevel.warning,
    ),
    logPrinter: const PrettyPrinter(),
  );
}
