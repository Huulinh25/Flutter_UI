import 'package:flutter/material.dart';
import 'package:my_app/screens/register_screen.dart';
import 'package:my_app/widgets/primary_button.dart';
import 'login_screen.dart';
import '../widgets/welcome_app_bar.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WelcomeAppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 5),
            Text(
              'Create a new account',
              style: Theme.of(context).textTheme.labelSmall,
            ),

            const SizedBox(height: 30),
            PrimaryButton(
              nameButton: 'LOGIN',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),

            const SizedBox(height: 20),
            PrimaryButton(
              nameButton: 'REGISTER',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
