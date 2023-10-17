import 'package:go_router/go_router.dart';
import 'package:scalable_flutter_app_starter/core/app/navigation/route.dart';
import 'package:scalable_flutter_app_starter/feature/auth/ui/splash_page.dart';
import 'package:scalable_flutter_app_starter/feature/home/ui/page/home_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.splash.path,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
