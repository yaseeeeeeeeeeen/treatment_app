import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

part 'patient_event.dart';
part 'patient_state.dart';

class PatientBloc extends Bloc<PatientEvent, PatientState> {
  PatientBloc() : super(PatientInitial()) {
    on<DateSelctedEvent>(dateSelctedEvent);
  }

  FutureOr<void> dateSelctedEvent(
      DateSelctedEvent event, Emitter<PatientState> emit) async {
    String formattedDate =
        DateFormat('EEEE, MMMM dd, yyyy').format(event.selectedDate);
    print(formattedDate);

    emit(DateSelctedSuccsessState(
        selctedDate: event.selectedDate, formatedDate: formattedDate));
  }
}
