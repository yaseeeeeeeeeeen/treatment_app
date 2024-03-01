import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/colors.dart';
import 'package:treatment_app/core/presentation/utils/text_styles.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      required this.title});
  final TextEditingController textEditingController;
  final String title;
  final String hintText;

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
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyles.hintText,
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
