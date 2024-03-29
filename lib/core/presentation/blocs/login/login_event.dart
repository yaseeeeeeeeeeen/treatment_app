// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoginButtonClickedEvent extends LoginEvent {
  final String username;
  final String password;

  LoginButtonClickedEvent({required this.username, required this.password});
}

class FetchOtherDatas extends LoginEvent {
  final String token;
  FetchOtherDatas({required this.token});
}
