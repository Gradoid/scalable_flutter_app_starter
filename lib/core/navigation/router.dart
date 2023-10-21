import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scalable_flutter_app_starter/core/navigation/route.dart';
import 'package:scalable_flutter_app_starter/feature/auth/bloc/auth_cubit.dart';
import 'package:scalable_flutter_app_starter/feature/auth/repository/auth_repository.dart';
import 'package:scalable_flutter_app_starter/feature/auth/ui/page/auth_page.dart';
import 'package:scalable_flutter_app_starter/feature/auth/ui/page/splash_page.dart';
import 'package:scalable_flutter_app_starter/feature/home/ui/page/home_page.dart';
import 'package:scalable_flutter_app_starter/feature/settings/ui/page/settings_page.dart';
import 'package:scalable_flutter_app_starter/feature/user/repository/user_repository.dart';

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
    GoRoute(
      path: AppRoute.settings.path,
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: AppRoute.auth.path,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => AuthCubit(
            userRepository: context.read<UserRepository>(),
            authRepository: context.read<AuthRepository>(),
          ),
          child: const AuthPage(),
        );
      },
    ),
  ],
);
