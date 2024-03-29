import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treatment_app/core/presentation/blocs/login/login_bloc.dart';
import 'package:treatment_app/core/presentation/pages/home_screen.dart';
import 'package:treatment_app/core/presentation/utils/constant/text_styles.dart';
import 'package:treatment_app/core/presentation/utils/snack_bar.dart';
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
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      if (state is FailedState) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            customSnackbar(context, false, state.messege));
                      } else if (state is LoginSuccsessState) {
                        context
                            .read<LoginBloc>()
                            .add(FetchOtherDatas(token: state.token));
                      } else if (state is DataFetchedSuccsessState) {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                            (route) => false);
                      }
                    },
                    builder: (context, state) {
                      return CustomButton(
                          isLoading: state is LoginLoadingState,
                          onPressed: () {
                            context.read<LoginBloc>().add(
                                LoginButtonClickedEvent(
                                    username: emailController.text.trim(),
                                    password: passwordController.text.trim()));
                          },
                          text: "Login");
                    },
                  ),
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
