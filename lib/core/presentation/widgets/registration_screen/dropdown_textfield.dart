import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/constant/colors.dart';
import 'package:treatment_app/core/presentation/utils/constant/text_styles.dart';

// ignore: must_be_immutable
class DropDownTextField extends StatefulWidget {
  DropDownTextField({
    super.key,
    required this.textController,
    required this.hintText,
    required this.title,
    required this.dropdownList,
  });
  TextEditingController textController = TextEditingController();
  final String hintText;
  final String title;
  List<String> dropdownList;
  @override
  State<DropDownTextField> createState() => _DropDownTextFieldState();
}

class _DropDownTextFieldState extends State<DropDownTextField> {
  String dropdownValue = "";
  @override
  Widget build(BuildContext context) {
    dropdownValue = widget.dropdownList[0];
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        widget.title.isNotEmpty
            ? Text(
                " ${widget.title}",
                style: AppTextStyles.textFieldTitle,
              )
            : const SizedBox(),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          width: size.width,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: DropdownButton<String>(
            hint: Text(widget.hintText, style: AppTextStyles.hintText),
            isDense: true,
            value: dropdownValue,
            isExpanded: true,
            dropdownColor: Colors.grey.shade200,
            icon: Icon(Icons.keyboard_arrow_down_outlined,
                color: AppColors.green),
            iconSize: 24,
            elevation: 0,
            style: AppTextStyles.poppinsblack,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: widget.dropdownList
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        )
      ]),
    );
  }
}
