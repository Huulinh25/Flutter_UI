import 'package:flutter/material.dart';
import 'package:my_app/widgets/input/base_input.dart';
import 'package:my_app/widgets/button/primary_button.dart';
import '../widgets/app_bar/welcome_app_bar.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WelcomeAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),

                Text(
                  'Register',
                  style: Theme.of(context).textTheme.labelMedium,
                ),

                // Email input
                const SizedBox(height: 20),
                const BaseInput(hintText: 'Email'),

                // Password input
                const SizedBox(height: 20),
                const BaseInput(hintText: 'Password', obscureText: true),

                // Confirm password input,
                const SizedBox(height: 20),
                const BaseInput(
                    hintText: 'Confirm Password', obscureText: true),

                //Button REGISTER
                const SizedBox(height: 20),
                PrimaryButton(
                  nameButton: 'REGISTER',
                  onPressed: () {},
                ),

                const SizedBox(height: 10),
                // Already have an account? Sign in
                Text(
                  'Already have an account? Sign in',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
