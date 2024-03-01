import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/text_styles.dart';
import 'package:treatment_app/core/presentation/widgets/login_page.dart/blured_image.dart';
import 'package:treatment_app/core/presentation/widgets/login_page.dart/button_custom.dart';
import 'package:treatment_app/core/presentation/widgets/login_page.dart/rich_text.dart';
import 'package:treatment_app/core/presentation/widgets/login_page.dart/text_filed.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const BluredImage(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text("Login Or Register To Book Your Appointments",
                      style: AppTextStyles.loginQuotes),
                  const SizedBox(height: 25),
                  CustomTextFiled(
                      hintText: "Enter your email",
                      textEditingController: emailController,
                      title: "Email"),
                  const SizedBox(height: 15),
                  CustomTextFiled(
                      hintText: "Enter password",
                      textEditingController: passwordController,
                      title: "Password"),
                  const SizedBox(height: 60),
                  CustomButton(onPressed: () {}, text: "Login"),
                  const SizedBox(height: 90),
                  const CustomRichText()
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
