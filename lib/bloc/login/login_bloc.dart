import 'dart:async';

import 'package:my_app/bloc/login/login_event.dart';
import 'package:my_app/bloc/login/login_state.dart';

class LoginBloc {
  final _stateController = StreamController<LoginState>();
  Stream<LoginState> get state => _stateController.stream;

  void send(LoginEvent event) {
    switch (event) {
      case LoginEvent.login:
        _stateController.sink.add(LoginState.loading());
        Future.delayed(const Duration(seconds: 2), () {
          _stateController.sink.add(LoginState.success());
        });
    }
  }

  void dispose() {
    _stateController.close();
  }
}
