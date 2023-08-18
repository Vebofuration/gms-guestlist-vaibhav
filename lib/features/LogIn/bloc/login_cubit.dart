import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void getemail(String value) {
    emit(state.copyWith(email: value));
  }

  void getpassword(String value) {
    emit(state.copyWith(password: value));
  }

  void login() async {
    emit(state.copyWith(errorMessage: ''));

    emit(state.copyWith(isLoading: true));
    if (state.email.isEmpty && state.password.isEmpty) {
      emit(
        state.copyWith(
            errorMessage:
                'Email is empty or invalid.' + 'Password should not be empty.'),
      );
      return; // Return here to prevent further processing
    } else if (state.email.isEmpty || !state.email.contains('@')) {
      emit(state.copyWith(errorMessage: 'Email is empty or invalid.'));
      return;
    } else if (state.password.isEmpty || state.password.length < 7) {
      emit(state.copyWith(errorMessage: "Password should be minimum 7 Length"));
      return;
    }

    await Future.delayed(const Duration(seconds: 3));
    emit(state.copyWith(isLoading: false, isLoaded: true));

    // emit(state.copyWith(isLoading: false));
  }
}
