import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treatment_app/core/presentation/blocs/login/login_bloc.dart';
import 'package:treatment_app/core/presentation/pages/registertion_screen.dart';
import 'package:treatment_app/core/presentation/pages/splash_screen.dart';

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
      ],
      child: MaterialApp(
        title: "Treatment App",
        debugShowCheckedModeBanner: false,
        home: RegistertionScreen(),
      ),
    );
  }
}
