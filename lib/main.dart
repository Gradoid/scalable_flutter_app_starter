import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loggy/loggy.dart';
import 'package:scalable_flutter_app_starter/core/app/app.dart';
import 'package:scalable_flutter_app_starter/feature/user/bloc/user_cubit.dart';
import 'package:scalable_flutter_app_starter/feature/user/repository/user_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initLoggy();
  _initGoogleFonts();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<UserCubit>(
            create: (context) => UserCubit(
              userRepository: context.read<UserRepository>(),
            ),
          ),
        ],
        child: const ScalableFlutterApp(),
      ),
    ),
  );
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

void _initGoogleFonts() {
  GoogleFonts.config.allowRuntimeFetching = false;

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
}
