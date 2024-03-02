import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/constant/colors.dart';
import 'package:treatment_app/core/presentation/utils/constant/text_styles.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      required this.title,
      this.readOnly = false,
      this.suffixIcon = const SizedBox(),this.textInputType=TextInputType.emailAddress});

  final TextEditingController textEditingController;
  final String title;
  final String hintText;
  final bool readOnly;
  final TextInputType textInputType;
  final Widget suffixIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          " $title",
          style: AppTextStyles.textFieldTitle,
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TextFormField(
            keyboardType: textInputType,
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyles.hintText,
              suffixIcon: suffixIcon,
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
          ),
        )
      ]),
    );
  }
}
