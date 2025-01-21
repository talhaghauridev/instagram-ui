import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.splashLogo),
            Image.asset(AppImages.splashLogo),
          ],
        ),
      ),
    );
  }
}
