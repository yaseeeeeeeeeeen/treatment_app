import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/pages/home_screen.dart';
import 'package:treatment_app/core/presentation/pages/login_page.dart';
import 'package:treatment_app/core/presentation/pages/registertion_screen.dart';
import 'package:treatment_app/core/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Treatment App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
