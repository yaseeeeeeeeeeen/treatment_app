part of 'login_bloc.dart';

abstract class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoadingState extends LoginState {}

final class LoginSuccsessState extends LoginState {
  final String token;
  LoginSuccsessState({required this.token});
}

final class LoginFailedState extends LoginState {
  final String messege;

  LoginFailedState({required this.messege});
}
