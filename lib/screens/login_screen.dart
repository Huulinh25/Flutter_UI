import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/login/login_bloc.dart';
import 'package:my_app/bloc/login/login_event.dart';
import 'package:my_app/bloc/login/login_state.dart';
import 'package:my_app/widgets/input/base_input.dart';

import '../widgets/app_bar/welcome_app_bar.dart';
import '../widgets/button/primary_button.dart';
import 'home/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(),
      child: Scaffold(
        appBar: const WelcomeAppBar(),
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.isSuccess) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(
                    loginMessage: "Login success",
                  ),
                ),
              );
            } else if (state.isFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Login failed')),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    const BaseInput(hintText: 'Email'),
                    const SizedBox(height: 20),
                    const BaseInput(
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget Password?',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    const SizedBox(height: 20),
                    PrimaryButton(
                      nameButton: 'LOGIN',
                      onPressed: () {
                        context.read<LoginBloc>().send(LoginEvent.login);
                      },
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Don't have an account? Sign up",
                      style: Theme.of(context).textTheme.labelSmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
