import 'package:flutter/material.dart';
import 'package:minimalist_login/components/my_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            // Logo
            const Center(
              child: Icon(
                Icons.lock,
                size: 100,
              ),
            ),
            const SizedBox(height: 50),

            Text("Welcome back you've been missed!",
                style: TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                )),
            const SizedBox(height: 25),
            // form Fields

            MyTextField(),
            const SizedBox(height: 25),
            MyTextField(),
          ],
        ),
      ),
    );
  }
}
