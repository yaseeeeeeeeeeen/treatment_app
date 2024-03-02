part of 'patient_bloc.dart';

abstract class PatientState {}

final class PatientInitial extends PatientState {}

final class PatientAddedSuccsessState extends PatientState {}

final class PatientAddedFailed extends PatientState {
  final String messege;

  PatientAddedFailed({required this.messege});
}

final class DateSelctedSuccsessState extends PatientState {
  final DateTime selctedDate;
  final String formatedDate;
  DateSelctedSuccsessState({required this.selctedDate,required this.formatedDate});
}

final class PatientAddedLoading extends PatientState {}
