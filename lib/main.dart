import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // ✅ Don't forget this!
import 'package:movie/core/configs/theme/app_theme.dart';
import 'package:movie/presentation/splash/bloc/splash_cubit.dart';
import 'package:movie/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ Makes the status bar transparent
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(), // ✅ App starts here
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme,
        home: SplashPage(), // ✅ Your splash screen
      ),
    );
  }
}
