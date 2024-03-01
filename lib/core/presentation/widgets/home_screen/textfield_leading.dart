import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/colors.dart';
import 'package:treatment_app/core/presentation/utils/text_styles.dart';

class TextFieldWithLeading extends StatelessWidget {
  const TextFieldWithLeading(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      required this.prefixIcon});
  final TextEditingController textEditingController;
  final String hintText;
  final Widget prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: AppTextStyles.homeSearch,
        filled: true,
        fillColor: Colors.grey.shade200,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.green, width: 2),
        ),
      ),
    );
  }
}
