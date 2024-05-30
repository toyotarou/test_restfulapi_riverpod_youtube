import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_styles.dart';
import 'firebase_options.dart';
import 'screens/sign_in/sign_in_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';
import 'screens/welcome/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
            "/register":(context)=>const SignUpScreen(),
          },
        );
      },
    );
  }
}
