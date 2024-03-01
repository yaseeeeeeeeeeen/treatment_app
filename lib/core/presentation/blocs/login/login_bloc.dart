import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonClickedEvent>(loginButtonClickedEvent);
    on<FetchOtherDatas>(fetchOtherDatas);
  }

  FutureOr<void> loginButtonClickedEvent(
      LoginButtonClickedEvent event, Emitter<LoginState> emit) async {}

  FutureOr<void> fetchOtherDatas(
      FetchOtherDatas event, Emitter<LoginState> emit) async {}
}
