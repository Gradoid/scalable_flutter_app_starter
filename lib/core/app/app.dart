import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/app/di.dart';
import 'package:scalable_flutter_app_starter/core/app/style.dart';
import 'package:scalable_flutter_app_starter/core/navigation/router.dart';

class ScalableFlutterApp extends StatelessWidget {
  const ScalableFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DI(
      child: MaterialApp.router(
        title: 'Scalable Flutter App',
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
