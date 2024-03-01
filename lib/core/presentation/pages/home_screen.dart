import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/colors.dart';
import 'package:treatment_app/core/presentation/utils/text_styles.dart';
import 'package:treatment_app/core/presentation/widgets/home_screen/dropdown_custom.dart';
import 'package:treatment_app/core/presentation/widgets/home_screen/list_tiles.dart';
import 'package:treatment_app/core/presentation/widgets/home_screen/textfield_leading.dart';
import 'package:treatment_app/core/presentation/widgets/login_page.dart/button_custom.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController treatmentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton:
                CustomButton(onPressed: () {}, text: "Register Now"),
            appBar: AppBar(
                leading: const Icon(Icons.arrow_back),
                actions: const [Icon(Icons.notifications), SizedBox(width: 10)],
                elevation: 0,
                backgroundColor: Colors.white),
            body: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFieldWithLeading(
                                  hintText: "Search for treatments",
                                  textEditingController: treatmentController,
                                  prefixIcon: const Icon(Icons.search)),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  fixedSize: const Size(100, 46),
                                  backgroundColor: AppColors.green),
                              child: Text("Search",
                                  style: AppTextStyles.poppinsWhite),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sort by :",
                                style: AppTextStyles.poppinsblack),
                            const DropDownCustom()
                          ],
                        ),
                      ),
                      const Divider(color: Colors.grey),
                      const SizedBox(height: 10),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              const PatientListTile(),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 20),
                          itemCount: 4),
                      const SizedBox(height: 60)
                    ],
                  ),
                ),
              ),
            )));
  }
}
