import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/Auth/Login/login_screen.dart';
import 'package:instagram_ui/screens/Auth/Signup/signup_screen.dart';
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
      theme: ThemeData.light(),
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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Go to Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/signup');
              },
              child: Text('Go to Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
