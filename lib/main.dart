import 'package:flutter/material.dart';
import 'package:instagram_ui/core/theme/app_colors.dart';
import 'package:instagram_ui/core/theme/app_theme.dart';
import 'package:instagram_ui/screens/Auth/Login/login_screen.dart';
import 'package:instagram_ui/screens/Auth/Signup/signup_screen.dart';
import 'package:instagram_ui/screens/Home/home_screen.dart';
import 'package:instagram_ui/screens/Splash/splash_screen.dart';
import 'constants/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.auth.login: (context) => LoginScreen(),
        AppRoutes.auth.signup: (context) => SignupScreen()
      },
    );
  }
}
