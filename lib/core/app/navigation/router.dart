import 'package:go_router/go_router.dart';
import 'package:scalable_flutter_app_starter/feature/home/ui/page/home_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
