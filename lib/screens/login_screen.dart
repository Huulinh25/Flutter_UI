import 'package:flutter/material.dart';
import 'package:my_app/bloc/login/login_bloc.dart';
import 'package:my_app/bloc/login/login_event.dart';
import 'package:my_app/bloc/login/login_state.dart';
import 'package:my_app/widgets/input/base_input.dart';
import '../widgets/app_bar/welcome_app_bar.dart';
import '../widgets/button/primary_button.dart';

import 'home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginBloc = LoginBloc();

  @override
  void dispose() {
    loginBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WelcomeAppBar(),
      body: StreamBuilder<LoginState>(
        stream: loginBloc.state,
        initialData: LoginState.initial(),
        builder: (context, snapshot) {
          final state = snapshot.data;

          // Điều hướng đến HomeScreen nếu đăng nhập thành công
          if (state?.isSuccess ?? false) {
            Future.microtask(() => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomeScreen(
                            loginMessage: "Login success",
                          )),
                ));
          }

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
                      loginBloc.send(LoginEvent.login);
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
    );
  }
}
