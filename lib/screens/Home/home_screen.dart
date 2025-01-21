import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constants.dart';
import 'package:instagram_ui/widgets/button_widget.dart';
import 'package:instagram_ui/widgets/input_widget.dart';

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
                Navigator.pushNamed(context, AppRoutes.auth.login);
              },
              child: Text('Go to Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.auth.login);
              },
              child: Text('Go to Signup'),
            ),
            CustomInput(hintText: 'Email', controller: TextEditingController()),
            const SizedBox(height: 10),
            CustomInput(
              hintText: 'Passoword',
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            CustomButton(
              text: 'Submit',
              onPressed: () {
                print('Button Pressed');
              },
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              borderRadius: 12,
              elevation: 4,
              leadingIcon: const Icon(Icons.send, color: Colors.white),
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
