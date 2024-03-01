import 'package:flutter/material.dart';
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
