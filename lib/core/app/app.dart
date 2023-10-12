import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/app/navigation/router.dart';
import 'package:scalable_flutter_app_starter/core/app/style.dart';

class ScalableFlutterApp extends StatelessWidget {
  const ScalableFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Scalable Flutter App',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
