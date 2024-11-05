import 'package:flutter/material.dart';
import 'package:my_app/widgets/input/base_input.dart';
import '../widgets/app_bar/welcome_app_bar.dart';
import '../widgets/button/primary_button.dart';

import 'home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WelcomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Giữ các phần tử ở đầu
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              // Email
              const SizedBox(height: 30),
              const BaseInput(hintText: 'Email'),
              // Password
              const SizedBox(height: 20),
              const BaseInput(
                hintText: 'Password',
                obscureText: true,
              ),

              //Forget Password?
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget Password?',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),

              // Button Login
              const SizedBox(height: 20),
              PrimaryButton(
                nameButton: 'LOGIN',
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),

              // Don't have an account? Sign up
              const SizedBox(height: 10),
              Text(
                "Don't have an account? Sign up",
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
