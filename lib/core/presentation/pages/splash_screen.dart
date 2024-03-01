import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assetName"))),
    );
  }
}
