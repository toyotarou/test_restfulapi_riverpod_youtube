import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_restfulapi_riverpod_youtube/app_styles.dart';
import 'screens/sign_in/sign_in_screen.dart';

import 'screens/welcome/welcome_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.appThemeData,
          routes: {
            "/": (context) => WelcomeScreen(),
            "/signIn": (context) => const SignInScreen(),
          },
        );
      },
    );
  }
}
