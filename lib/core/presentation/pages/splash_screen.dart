import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/pages/login_page.dart';
import 'package:treatment_app/core/presentation/utils/image_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    loginCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.loginBg), fit: BoxFit.cover)),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            height: size.height / 4,
            width: size.width,
            color: Colors.black.withOpacity(0.4),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image(image: AssetImage(AppImages.appLogo)),
                )
              ],
            ),
          )),
    ));
  }

  loginCheck() async {
    await const Duration(seconds: 2);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
  }
}
