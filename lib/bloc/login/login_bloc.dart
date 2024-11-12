import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/login/login_event.dart';
import 'package:my_app/bloc/login/login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc() : super(LoginState.initial());

  void send(LoginEvent event) {
    switch (event) {
      case LoginEvent.login:
        emit(LoginState.loading());
        Future.delayed(const Duration(seconds: 2), () {
          emit(LoginState.success());
        });
    }
  }
}
