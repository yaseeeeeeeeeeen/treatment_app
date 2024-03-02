import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treatment_app/core/presentation/blocs/login/login_bloc.dart';
import 'package:treatment_app/core/presentation/blocs/patient/patient_bloc.dart';
import 'package:treatment_app/core/presentation/pages/home_screen.dart';
import 'package:treatment_app/core/presentation/pages/login_page.dart';
import 'package:treatment_app/core/presentation/pages/registertion_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(create: (context) => PatientBloc())
      ],
      child: MaterialApp(
        title: "Treatment App",
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
