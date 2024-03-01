import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/constant/colors.dart';
import 'package:treatment_app/core/presentation/utils/constant/text_styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.isLoading = false});
  final void Function()? onPressed;
  final String text;
  bool isLoading;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            fixedSize: Size(size.width - 30, 50)),
        child: isLoading
            ? const SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                  strokeCap: StrokeCap.round,
                ),
              )
            : Text(text, style: AppTextStyles.loginButtonText));
  }
}
