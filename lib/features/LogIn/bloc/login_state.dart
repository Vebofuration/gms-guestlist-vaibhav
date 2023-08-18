import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';
// part of 'login_cubit.dart';
@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(false) bool isLoaded,
    @Default('') String email,
    @Default('') String password,
   
  }) = _LoginState;
}
