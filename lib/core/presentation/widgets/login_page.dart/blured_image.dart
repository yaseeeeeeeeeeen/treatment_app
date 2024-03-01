import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/image_path.dart';

class BluredImage extends StatelessWidget {
  const BluredImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.loginBg), fit: BoxFit.cover)),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            height: size.height / 4,
            width: size.width,
            color: Colors.black.withOpacity(0.2),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image(image: AssetImage(AppImages.appLogo)),
                )
              ],
            ),
          )),
    );
  }
}
