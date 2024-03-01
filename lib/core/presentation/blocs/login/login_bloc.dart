import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treatment_app/core/data/models/branches_model.dart';
import 'package:treatment_app/core/data/repositories/datas_repo.dart';
import 'package:treatment_app/core/data/repositories/login_repo.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  // late Branchs branchs;
  // late TrietmentList trietmentList;
  // late Patient patient;
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonClickedEvent>(loginButtonClickedEvent);
    on<FetchOtherDatas>(fetchOtherDatas);
  }

  FutureOr<void> loginButtonClickedEvent(
      LoginButtonClickedEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoadingState());
    final response = await LoginRepo()
        .login(email: event.username, password: event.password);
    response.fold((left) {
      
      emit(FailedState(messege: left.message));
    }, (right) {
      print("Level One Compelete");
      emit(LoginSuccsessState(token: right["token"]));
    });
  }

  FutureOr<void> fetchOtherDatas(
      FetchOtherDatas event, Emitter<LoginState> emit) async {
    emit(LoginLoadingState());
    final branchResponse =
        await HospitalDataRepo().branchGet(token: event.token);
    branchResponse.fold((left) {
      emit(FailedState(messege: left.message));
    }, (right) async {
      print("Level Two Compelete");
      final branches = Branchs.fromJson(right);
      print(branches.branches[0].name);
      final treatmentResponse =
          await HospitalDataRepo().treatmentList(token: event.token);
      treatmentResponse.fold((left) {
        emit(FailedState(messege: left.message));
      }, (right) async {
        print("Level Three Compelete");
        print(right);
        final patientResponse =
            await HospitalDataRepo().patientList(token: event.token);
        patientResponse.fold((left) {
          emit(FailedState(messege: left.message));
        }, (right) {
          print("Level Four Compelete");
          print(right);
          emit(DataFetchedSuccsessState());
        });
      });
    });
  }
}
