import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/text_styles.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return      RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text:
                                'By creating or logging into an account you are agreeing with our ',
                            style: AppTextStyles.richtextNormal),
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: AppTextStyles.richtextBlue,
                        ),
                        TextSpan(
                            text: ' and ', style: AppTextStyles.richtextNormal),
                        TextSpan(
                            text: 'Privacy Policy.',
                            style: AppTextStyles.richtextBlue),
                      ],
                    ),
                  );
  }
}