import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/constant/colors.dart';
import 'package:treatment_app/core/presentation/utils/constant/text_styles.dart';

SnackBar customSnackbar(context, bool error, String messege) {
  return SnackBar(
    content: Text(
      messege,
      style: AppTextStyles.poppinsWhite,
    ),
    backgroundColor:
        error ? AppColors.green : const Color.fromARGB(255, 172, 9, 0),
    duration: const Duration(seconds: 3),
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}
