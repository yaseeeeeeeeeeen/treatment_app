import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/colors.dart';
import 'package:treatment_app/core/presentation/utils/static_datas.dart';
import 'package:treatment_app/core/presentation/utils/text_styles.dart';
import 'package:treatment_app/core/presentation/widgets/home_screen/alert_box-counter.dart';
import 'package:treatment_app/core/presentation/widgets/home_screen/radio_buttons.dart';
import 'package:treatment_app/core/presentation/widgets/login_page.dart/button_custom.dart';
import 'package:treatment_app/core/presentation/widgets/login_page.dart/text_filed.dart';
import 'package:treatment_app/core/presentation/widgets/registration_screen/dropdown_textfield.dart';

// ignore: must_be_immutable
class RegistertionScreen extends StatelessWidget {
  RegistertionScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  int male = 0;
  int female = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: const [Icon(Icons.notifications), SizedBox(width: 10)],
            elevation: 0,
            backgroundColor: Colors.white),
        body: Container(
          color: Colors.white,
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Register",
                style: AppTextStyles.loginQuotes,
              ),
            ),
            const Divider(color: Colors.grey),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFiled(
                      hintText: "Enter your full name",
                      textEditingController: nameController,
                      title: "Name"),
                  const SizedBox(height: 20),
                  CustomTextFiled(
                      hintText: "Enter your Whatsapp number",
                      textEditingController: nameController,
                      title: "Whatsapp Number"),
                  const SizedBox(height: 20),
                  CustomTextFiled(
                      hintText: "Enter your address",
                      textEditingController: nameController,
                      title: "Address"),
                  const SizedBox(height: 20),
                  DropDownTextField(
                      dropdownList: StaticData.locationDropDown,
                      textController: nameController,
                      hintText: "Select your location",
                      title: "Location"),
                  const SizedBox(height: 20),
                  DropDownTextField(
                      dropdownList: StaticData.locationDropDown,
                      textController: nameController,
                      hintText: "Select a branch",
                      title: "Brach"),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible:
                            false, // User must tap button to dismiss
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            contentPadding: const EdgeInsets.all(0),
                            content: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              padding: const EdgeInsets.all(10),
                              height: size.height / 2.5,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DropDownTextField(
                                      dropdownList: StaticData.locationDropDown,
                                      textController: nameController,
                                      hintText: "Choose prefered treatment",
                                      title: "Choose treatment"),
                                  Text("Add Patients",
                                      style: AppTextStyles.poppinsblack),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text("Male",
                                                style: AppTextStyles.hintText)),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                            child:
                                                CounterAlertBox(count: male)),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text("Female",
                                                style: AppTextStyles.hintText)),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                            child:
                                                CounterAlertBox(count: female)),
                                      )
                                    ],
                                  ),
                                  CustomButton(onPressed: () {}, text: "Save")
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.green.withOpacity(0.1),
                        fixedSize: Size(size.width, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("+ Add Treatments",
                        style: AppTextStyles.poppinsblack),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFiled(
                      hintText: "",
                      textEditingController: nameController,
                      title: "Total Amount"),
                  const SizedBox(height: 10),
                  CustomTextFiled(
                      hintText: "",
                      textEditingController: nameController,
                      title: "Discount Amount"),
                  const MyRadioList(options: ["CASH", "CARD", "UPI"]),
                  CustomTextFiled(
                      hintText: "",
                      textEditingController: nameController,
                      title: "Advance Amount"),
                  const SizedBox(height: 10),
                  CustomTextFiled(
                      hintText: "",
                      textEditingController: nameController,
                      title: "Balance Amount"),
                  const SizedBox(height: 10),
                  CustomTextFiled(
                      hintText: "",
                      textEditingController: nameController,
                      title: "Treatment Date"),
                  const SizedBox(height: 10),
                  Text(
                    "Treatment Time",
                    style: AppTextStyles.textFieldTitle,
                  ),
                  Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: DropDownTextField(
                              textController: nameController,
                              hintText: "Hours",
                              title: "",
                              dropdownList: StaticData.sortDropDown)),
                      const SizedBox(width: 10),
                      Flexible(
                          flex: 1,
                          child: DropDownTextField(
                              textController: nameController,
                              hintText: "Hours",
                              title: "",
                              dropdownList: StaticData.sortDropDown))
                    ],
                  ),
                  const SizedBox(height: 10),
                  CustomButton(onPressed: () {}, text: "SAVE"),
                  const SizedBox(height: 10),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
