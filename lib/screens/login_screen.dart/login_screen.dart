import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minimalist_login/components/my_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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

            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            const SizedBox(height: 25),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            // Forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot password?",
                    style: TextStyle(
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
