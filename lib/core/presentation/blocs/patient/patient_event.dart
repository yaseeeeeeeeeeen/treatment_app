part of 'patient_bloc.dart';

abstract class PatientEvent {}

class DateSelctedEvent extends PatientEvent {
  final DateTime selectedDate;
  DateSelctedEvent({required this.selectedDate});
}
