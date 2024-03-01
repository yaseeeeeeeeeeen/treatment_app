import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/colors.dart';

class AppTextStyles {
  static TextStyle poppinsWhite =
      const TextStyle(fontFamily: "Poppins", color: Colors.white);
  static TextStyle dateSmall =
      const TextStyle(fontFamily: "Poppins", color: Colors.grey);
  static TextStyle poppinsblack =
      const TextStyle(fontFamily: "Poppins", color: Colors.black, fontSize: 16);
  static TextStyle poppinsbold = const TextStyle(
      fontFamily: "Poppins",
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold);
  static TextStyle poppinsGreen =
      TextStyle(fontFamily: "Poppins", color: AppColors.green, fontSize: 16);
  static TextStyle loginQuotes = const TextStyle(
      fontFamily: "Poppins", fontSize: 25, fontWeight: FontWeight.w500);
  static TextStyle richtextBlue =
      const TextStyle(color: Colors.blue, fontFamily: "Poppins", fontSize: 10);
  static TextStyle richtextNormal =
      const TextStyle(color: Colors.black, fontFamily: "Poppins", fontSize: 10);

  static TextStyle loginButtonText =
      const TextStyle(fontFamily: "Poppins", fontSize: 17, color: Colors.white);
  static TextStyle hintText =
      TextStyle(color: Colors.black.withOpacity(0.6), fontFamily: "Poppins");
  static TextStyle textFieldTitle =
      const TextStyle(fontSize: 18, fontFamily: "Poppins");
  static TextStyle homeSearch = TextStyle(
      fontFamily: "Poppins",
      color: Colors.black.withOpacity(0.2),
      fontSize: 13);
}
