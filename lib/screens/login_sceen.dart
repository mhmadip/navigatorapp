import 'package:flutter/material.dart';
import 'package:navigatorapp/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.pushNamed(context,'bottom_nav_screen');
          },
        ),
      ),
    );
  }
}
