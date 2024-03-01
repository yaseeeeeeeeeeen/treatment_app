part of 'patient_bloc.dart';

abstract class PatientState {}

final class PatientInitial extends PatientState {}

final class PatientAddedSuccsessState extends PatientState {}

final class PatientAddedFailed extends PatientState {
  final String messege;

  PatientAddedFailed({required this.messege});
}

final class PatientAddedLoading extends PatientState {}
